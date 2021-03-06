; Auto-generated. Do not edit!


(cl:in-package mds_cnn_node_pkg-msg)


;//! \htmlinclude MDSPred.msg.html

(cl:defclass <MDSPred> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (target_idx
    :reader target_idx
    :initarg :target_idx
    :type cl:fixnum
    :initform 0)
   (posX
    :reader posX
    :initarg :posX
    :type cl:float
    :initform 0.0)
   (posY
    :reader posY
    :initarg :posY
    :type cl:float
    :initform 0.0)
   (velX
    :reader velX
    :initarg :velX
    :type cl:float
    :initform 0.0)
   (velY
    :reader velY
    :initarg :velY
    :type cl:float
    :initform 0.0)
   (mds_pred_array
    :reader mds_pred_array
    :initarg :mds_pred_array
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (prediction
    :reader prediction
    :initarg :prediction
    :type cl:string
    :initform ""))
)

(cl:defclass MDSPred (<MDSPred>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MDSPred>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MDSPred)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mds_cnn_node_pkg-msg:<MDSPred> is deprecated: use mds_cnn_node_pkg-msg:MDSPred instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MDSPred>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mds_cnn_node_pkg-msg:header-val is deprecated.  Use mds_cnn_node_pkg-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'target_idx-val :lambda-list '(m))
(cl:defmethod target_idx-val ((m <MDSPred>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mds_cnn_node_pkg-msg:target_idx-val is deprecated.  Use mds_cnn_node_pkg-msg:target_idx instead.")
  (target_idx m))

(cl:ensure-generic-function 'posX-val :lambda-list '(m))
(cl:defmethod posX-val ((m <MDSPred>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mds_cnn_node_pkg-msg:posX-val is deprecated.  Use mds_cnn_node_pkg-msg:posX instead.")
  (posX m))

(cl:ensure-generic-function 'posY-val :lambda-list '(m))
(cl:defmethod posY-val ((m <MDSPred>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mds_cnn_node_pkg-msg:posY-val is deprecated.  Use mds_cnn_node_pkg-msg:posY instead.")
  (posY m))

(cl:ensure-generic-function 'velX-val :lambda-list '(m))
(cl:defmethod velX-val ((m <MDSPred>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mds_cnn_node_pkg-msg:velX-val is deprecated.  Use mds_cnn_node_pkg-msg:velX instead.")
  (velX m))

(cl:ensure-generic-function 'velY-val :lambda-list '(m))
(cl:defmethod velY-val ((m <MDSPred>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mds_cnn_node_pkg-msg:velY-val is deprecated.  Use mds_cnn_node_pkg-msg:velY instead.")
  (velY m))

(cl:ensure-generic-function 'mds_pred_array-val :lambda-list '(m))
(cl:defmethod mds_pred_array-val ((m <MDSPred>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mds_cnn_node_pkg-msg:mds_pred_array-val is deprecated.  Use mds_cnn_node_pkg-msg:mds_pred_array instead.")
  (mds_pred_array m))

(cl:ensure-generic-function 'prediction-val :lambda-list '(m))
(cl:defmethod prediction-val ((m <MDSPred>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mds_cnn_node_pkg-msg:prediction-val is deprecated.  Use mds_cnn_node_pkg-msg:prediction instead.")
  (prediction m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MDSPred>) ostream)
  "Serializes a message object of type '<MDSPred>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_idx)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'posX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'posY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'mds_pred_array))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'mds_pred_array))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'prediction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'prediction))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MDSPred>) istream)
  "Deserializes a message object of type '<MDSPred>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_idx)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'posX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'posY) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velY) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'mds_pred_array) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'mds_pred_array)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'prediction) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'prediction) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MDSPred>)))
  "Returns string type for a message object of type '<MDSPred>"
  "mds_cnn_node_pkg/MDSPred")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MDSPred)))
  "Returns string type for a message object of type 'MDSPred"
  "mds_cnn_node_pkg/MDSPred")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MDSPred>)))
  "Returns md5sum for a message object of type '<MDSPred>"
  "1f0f31d758f114011921fb9c0d76aee9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MDSPred)))
  "Returns md5sum for a message object of type 'MDSPred"
  "1f0f31d758f114011921fb9c0d76aee9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MDSPred>)))
  "Returns full string definition for message of type '<MDSPred>"
  (cl:format cl:nil "Header header~%uint8 target_idx~%float32 posX~%float32 posY~%float32 velX~%float32 velY~%float32[] mds_pred_array~%string prediction~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MDSPred)))
  "Returns full string definition for message of type 'MDSPred"
  (cl:format cl:nil "Header header~%uint8 target_idx~%float32 posX~%float32 posY~%float32 velX~%float32 velY~%float32[] mds_pred_array~%string prediction~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MDSPred>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'mds_pred_array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:length (cl:slot-value msg 'prediction))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MDSPred>))
  "Converts a ROS message object to a list"
  (cl:list 'MDSPred
    (cl:cons ':header (header msg))
    (cl:cons ':target_idx (target_idx msg))
    (cl:cons ':posX (posX msg))
    (cl:cons ':posY (posY msg))
    (cl:cons ':velX (velX msg))
    (cl:cons ':velY (velY msg))
    (cl:cons ':mds_pred_array (mds_pred_array msg))
    (cl:cons ':prediction (prediction msg))
))
