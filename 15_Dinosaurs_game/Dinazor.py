import cv2
import pyautogui
import mediapipe as mp
# Camera Setup
cap=cv2.VideoCapture(0,cv2.CAP_DSHOW)
# Camera Size Setup
cap.set(3,1280)
cap.set(4,720)
# Hands Solutions Setup
mpHands=mp.solutions.hands
hands=mpHands.Hands()
mpDraw=mp.solutions.drawing_utils
# Color Setting
green_color=(0,255,0)
white_color=(255,255,255)

while True:
    success,img=cap.read()
    img=cv2.flip(img,1)
    results=hands.process(cv2.cvtColor(img,cv2.COLOR_BGR2RGB))
    multiLandMarks=results.multi_hand_landmarks

    #RECTANGLE DRAW AND LANE DRAW
    cv2.line(img,(640,0),(640,720),white_color,10)
    cv2.rectangle(img,(600,260),(680,460),green_color,cv2.FILLED)


    # Landmarks connection
    if multiLandMarks:
        handPoint=[]
        for handLms in multiLandMarks:
            mpDraw.draw_landmarks(img,handLms,mpHands.HAND_CONNECTIONS)
            for idx,lm in enumerate(handLms.landmark):
                h,w,c=img.shape
                cx,cy=int(lm.x*w),int(lm.y*h)
                handPoint.append((cx,cy))
            if handPoint[0][1]<260:
                print("Up")
                pyautogui.keyDown("space")
                pyautogui.keyUp("space")
            elif handPoint[0][1]>460:
                pyautogui.keyDown("down")
                pyautogui.keyUp("down")
            else:
                print("Center")
    cv2.imshow("Dino Game", img)

    #Command that turns off the camera when pressing the 'q' key
    if(cv2.waitKey(1) & 0xFF==ord('q')):
        break

cap.release()
cv2.destroyAllWindows()






