
# Enter your Python code here

    
from pya import *
import numpy as n
class OriginalError(Exception):
    pass

if __name__ == '__main__':

    app = Application.instance()
    mw = app.main_window()

    # layoutのcurrent_viewを取得
    try:
        lv = mw.current_view()
        if lv is None:
            raise OriginalError('Cancelled')
    except OriginalError as e:
        print(e)

    # cellの取得
    cell = lv.active_cellview().cell

    # layoutの取得
    LAYOUT = cell.layout()
    
    DBU = 1 / cell.layout().dbu

    bsize = 1.0
    
    ################################################
    # 各layerのindexを取得
    m_index = LAYOUT.layer(LayerInfo.new(46,0))
    ################################################

    key = 0
    w = 0.6
    wd = w*DBU

    cir_size = [2,1]

    length = 50
    a_move = 0.225

    offset_y = 342.2


    offset = [150,offset_y]

    # A
    for x in range(550):

        y_position = offset[1] - x*w

        # right
        lcenter_position = [offset[0] + x*a_move ,y_position]
        points = [[lcenter_position[0]-length//2,lcenter_position[1]],[lcenter_position[0]+length//2,lcenter_position[1]]]
        points=n.array(points)*DBU
        a1 = []
        for p in points:
            a1.append(Point.new(int(p[0]), int(p[1])))
        cell.shapes(m_index).insert(Path.new(a1,wd))

        # left
        rcenter_position = [offset[0] - x*a_move ,y_position]
        points = [[rcenter_position[0]-length//2,rcenter_position[1]],[rcenter_position[0]+length//2,rcenter_position[1]]]
        points=n.array(points)*DBU
        a1 = []
        for p in points:
            a1.append(Point.new(int(p[0]), int(p[1])))
        cell.shapes(m_index).insert(Path.new(a1,wd))

        # middle
        print(f'ypos = {x,y_position}')

        if -20 + (offset[1]-200) < y_position < 20 + (offset[1]-200):
            points = [lcenter_position,rcenter_position]
            points=n.array(points)*DBU
            a1 = []
            for p in points:
                a1.append(Point.new(int(p[0]), int(p[1])))
            cell.shapes(m_index).insert(Path.new(a1,wd))

    offset = [450,offset_y]

    # N
    for x in range(550):

        y_position = offset[1] - x*w

        # right
        lcenter_position = [offset[0] - 110 , y_position]
        points = [[lcenter_position[0]-length//2,lcenter_position[1]],[lcenter_position[0]+length//2,lcenter_position[1]]]
        points=n.array(points)*DBU
        a1 = []
        for p in points:
            a1.append(Point.new(int(p[0]), int(p[1])))
        cell.shapes(m_index).insert(Path.new(a1,wd))

        # left
        rcenter_position = [offset[0] + 110,y_position]
        points = [[rcenter_position[0]-length//2,rcenter_position[1]],[rcenter_position[0]+length//2,rcenter_position[1]]]
        points=n.array(points)*DBU
        a1 = []
        for p in points:
            a1.append(Point.new(int(p[0]), int(p[1])))
        cell.shapes(m_index).insert(Path.new(a1,wd))

        # middle
        mcenter_position = [offset[0] - 110 + x*0.4 , y_position]
        points = [[mcenter_position[0]-length//2,mcenter_position[1]],[mcenter_position[0]+length//2,mcenter_position[1]]]
        print(points)
        points=n.array(points)*DBU
        a1 = []
        for p in points:
            a1.append(Point.new(int(p[0]), int(p[1])))
        cell.shapes(m_index).insert(Path.new(a1,wd))   


    offset = [750,offset_y]

    # A
    for x in range(550):

        y_position = offset[1] - x*w

        # right
        lcenter_position = [offset[0] + x*a_move ,y_position]
        points = [[lcenter_position[0]-length//2,lcenter_position[1]],[lcenter_position[0]+length//2,lcenter_position[1]]]
        points=n.array(points)*DBU
        a1 = []
        for p in points:
            a1.append(Point.new(int(p[0]), int(p[1])))
        cell.shapes(m_index).insert(Path.new(a1,wd))

        # left
        rcenter_position = [offset[0] - x*a_move ,y_position]
        points = [[rcenter_position[0]-length//2,rcenter_position[1]],[rcenter_position[0]+length//2,rcenter_position[1]]]
        points=n.array(points)*DBU
        a1 = []
        for p in points:
            a1.append(Point.new(int(p[0]), int(p[1])))
        cell.shapes(m_index).insert(Path.new(a1,wd))

        # middle
        print(f'ypos = {x,y_position}')

        if -20 + (offset[1]-200) < y_position < 20 + (offset[1]-200):
            points = [lcenter_position,rcenter_position]
            points=n.array(points)*DBU
            a1 = []
            for p in points:
                a1.append(Point.new(int(p[0]), int(p[1])))
            cell.shapes(m_index).insert(Path.new(a1,wd))

    offset = [1050,offset_y]

    # N
    for x in range(550):

        y_position = offset[1] - x*w

        # right
        lcenter_position = [offset[0] - 110 , y_position]
        points = [[lcenter_position[0]-length//2,lcenter_position[1]],[lcenter_position[0]+length//2,lcenter_position[1]]]
        points=n.array(points)*DBU
        a1 = []
        for p in points:
            a1.append(Point.new(int(p[0]), int(p[1])))
        cell.shapes(m_index).insert(Path.new(a1,wd))

        # left
        rcenter_position = [offset[0] + 110,y_position]
        points = [[rcenter_position[0]-length//2,rcenter_position[1]],[rcenter_position[0]+length//2,rcenter_position[1]]]
        points=n.array(points)*DBU
        a1 = []
        for p in points:
            a1.append(Point.new(int(p[0]), int(p[1])))
        cell.shapes(m_index).insert(Path.new(a1,wd))

        # middle
        mcenter_position = [offset[0] - 110 + x*0.4 , y_position]
        points = [[mcenter_position[0]-length//2,mcenter_position[1]],[mcenter_position[0]+length//2,mcenter_position[1]]]
        print(points)
        points=n.array(points)*DBU
        a1 = []
        for p in points:
            a1.append(Point.new(int(p[0]), int(p[1])))
        cell.shapes(m_index).insert(Path.new(a1,wd))   

   
        
