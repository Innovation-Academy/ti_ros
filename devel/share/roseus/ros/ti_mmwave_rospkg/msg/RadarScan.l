;; Auto-generated. Do not edit!


(when (boundp 'ti_mmwave_rospkg::RadarScan)
  (if (not (find-package "TI_MMWAVE_ROSPKG"))
    (make-package "TI_MMWAVE_ROSPKG"))
  (shadow 'RadarScan (find-package "TI_MMWAVE_ROSPKG")))
(unless (find-package "TI_MMWAVE_ROSPKG::RADARSCAN")
  (make-package "TI_MMWAVE_ROSPKG::RADARSCAN"))

(in-package "ROS")
;;//! \htmlinclude RadarScan.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ti_mmwave_rospkg::RadarScan
  :super ros::object
  :slots (_header _point_id _target_idx _x _y _z _range _velocity _doppler_bin _bearing _intensity _posX _posY _velX _velY ))

(defmethod ti_mmwave_rospkg::RadarScan
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:point_id __point_id) 0)
    ((:target_idx __target_idx) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:range __range) 0.0)
    ((:velocity __velocity) 0.0)
    ((:doppler_bin __doppler_bin) 0)
    ((:bearing __bearing) 0.0)
    ((:intensity __intensity) 0.0)
    ((:posX __posX) 0.0)
    ((:posY __posY) 0.0)
    ((:velX __velX) 0.0)
    ((:velY __velY) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _point_id (round __point_id))
   (setq _target_idx (round __target_idx))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _range (float __range))
   (setq _velocity (float __velocity))
   (setq _doppler_bin (round __doppler_bin))
   (setq _bearing (float __bearing))
   (setq _intensity (float __intensity))
   (setq _posX (float __posX))
   (setq _posY (float __posY))
   (setq _velX (float __velX))
   (setq _velY (float __velY))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:point_id
   (&optional __point_id)
   (if __point_id (setq _point_id __point_id)) _point_id)
  (:target_idx
   (&optional __target_idx)
   (if __target_idx (setq _target_idx __target_idx)) _target_idx)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:range
   (&optional __range)
   (if __range (setq _range __range)) _range)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:doppler_bin
   (&optional __doppler_bin)
   (if __doppler_bin (setq _doppler_bin __doppler_bin)) _doppler_bin)
  (:bearing
   (&optional __bearing)
   (if __bearing (setq _bearing __bearing)) _bearing)
  (:intensity
   (&optional __intensity)
   (if __intensity (setq _intensity __intensity)) _intensity)
  (:posX
   (&optional __posX)
   (if __posX (setq _posX __posX)) _posX)
  (:posY
   (&optional __posY)
   (if __posY (setq _posY __posY)) _posY)
  (:velX
   (&optional __velX)
   (if __velX (setq _velX __velX)) _velX)
  (:velY
   (&optional __velY)
   (if __velY (setq _velY __velY)) _velY)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint16 _point_id
    2
    ;; uint8 _target_idx
    1
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; float32 _range
    4
    ;; float32 _velocity
    4
    ;; uint16 _doppler_bin
    2
    ;; float32 _bearing
    4
    ;; float32 _intensity
    4
    ;; float32 _posX
    4
    ;; float32 _posY
    4
    ;; float32 _velX
    4
    ;; float32 _velY
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint16 _point_id
       (write-word _point_id s)
     ;; uint8 _target_idx
       (write-byte _target_idx s)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _range
       (sys::poke _range (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint16 _doppler_bin
       (write-word _doppler_bin s)
     ;; float32 _bearing
       (sys::poke _bearing (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _intensity
       (sys::poke _intensity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _posX
       (sys::poke _posX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _posY
       (sys::poke _posY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _velX
       (sys::poke _velX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _velY
       (sys::poke _velY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint16 _point_id
     (setq _point_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _target_idx
     (setq _target_idx (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _range
     (setq _range (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _velocity
     (setq _velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint16 _doppler_bin
     (setq _doppler_bin (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _bearing
     (setq _bearing (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _intensity
     (setq _intensity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _posX
     (setq _posX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _posY
     (setq _posY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _velX
     (setq _velX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _velY
     (setq _velY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ti_mmwave_rospkg::RadarScan :md5sum-) "a4d09446d2fc17ce80358b29d25af8b6")
(setf (get ti_mmwave_rospkg::RadarScan :datatype-) "ti_mmwave_rospkg/RadarScan")
(setf (get ti_mmwave_rospkg::RadarScan :definition-)
      "Header header
uint16 point_id
uint8 target_idx
float32 x
float32 y
float32 z
float32 range
float32 velocity
uint16 doppler_bin
float32 bearing
float32 intensity
float32 posX
float32 posY
float32 velX
float32 velY

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :ti_mmwave_rospkg/RadarScan "a4d09446d2fc17ce80358b29d25af8b6")


