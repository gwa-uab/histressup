import pandas as pd
import os

dir = 'G://Shared drives//FES_Data_Sharing_Forestry//Manuscripts//histressupp//data'

contours = os.path.join(dir, 'contours.csv')
contours = pd.read_csv(contours)

whitecourt = contours[contours.location=='Hinton']

def auto_contour(year):

    cdir = 'G:\\Shared drives\\FES_Data_Sharing_Forestry\\Manuscripts\\histressupp\\data\\contours'
    filename = year[1][0] + ' ' + str(year[1][1]) + '.gpkg'

    coutput = os.path.join(cdir,filename)

    # Find contour times

    t200 = int(((year[1][2] - 1)/2)*3600)
    t400 = int(((year[1][3] - 1)/2)*3600)
    t800 = int(((year[1][4] - 1)/2)*3600)

    # Create contours

    c200 = processing.run("gdal:contour",
        {'INPUT':'G:\Shared drives\FES_Data_Sharing_Forestry\Haul distance\Hinton\hinton_service.tif',
        'BAND':1,'INTERVAL':1e+07,'FIELD_NAME':'ELEV','CREATE_3D':False,'IGNORE_NODATA':False,'NODATA':None,
        'OFFSET':t200,
        'EXTRA':'',
        'OUTPUT':'TEMPORARY_OUTPUT'})['OUTPUT']
        
    c400 = processing.run("gdal:contour",
        {'INPUT':'G:\Shared drives\FES_Data_Sharing_Forestry\Haul distance\Hinton\hinton_service.tif',
        'BAND':1,'INTERVAL':1e+07,'FIELD_NAME':'ELEV','CREATE_3D':False,'IGNORE_NODATA':False,'NODATA':None,
        'OFFSET':t400,
        'EXTRA':'',
        'OUTPUT':'TEMPORARY_OUTPUT'})['OUTPUT']
        
    c800 = processing.run("gdal:contour",
        {'INPUT':'G:\Shared drives\FES_Data_Sharing_Forestry\Haul distance\Hinton\hinton_service.tif',
        'BAND':1,'INTERVAL':1e+07,'FIELD_NAME':'ELEV','CREATE_3D':False,'IGNORE_NODATA':False,'NODATA':None,
        'OFFSET':t800,
        'EXTRA':'',
        'OUTPUT':'TEMPORARY_OUTPUT'})['OUTPUT']
      
    # Merge the contours

    c = processing.run("native:mergevectorlayers",
        {'LAYERS':[c200, c400, c800],
        'CRS':None,
        'OUTPUT':'TEMPORARY_OUTPUT'})['OUTPUT']
           
    # Remove small contour lines beloe 100km

    c_fil = processing.run("native:extractbyexpression",
        {'INPUT':c,
        'EXPRESSION':'$length > 100000',
        'OUTPUT':'TEMPORARY_OUTPUT'})['OUTPUT']

    # Field management

    c_fil = processing.run("native:deletecolumn",
        {'INPUT':c_fil,'COLUMN':['fid'],
        'OUTPUT':'TEMPORARY_OUTPUT'})['OUTPUT']
        
    c_fil = processing.run("native:addautoincrementalfield", {'INPUT':c_fil,
        'FIELD_NAME':'fid','START':0,'GROUP_FIELDS':[],'SORT_EXPRESSION':'','SORT_ASCENDING':True,'SORT_NULLS_FIRST':False,
        'OUTPUT':'TEMPORARY_OUTPUT'})['OUTPUT']

    # Simplify

    c_sim = processing.run("native:simplifygeometries",
        {'INPUT':c_fil,
        'METHOD':0,
        'TOLERANCE':2000,
        'OUTPUT':'TEMPORARY_OUTPUT'})['OUTPUT']
        
    processing.run("native:smoothgeometry",
        {'INPUT':c_sim,
        'ITERATIONS':2,'OFFSET':0.25,'MAX_ANGLE':180,
        'OUTPUT':coutput})
    
for year in whitecourt.iterrows():
    auto_contour(year)