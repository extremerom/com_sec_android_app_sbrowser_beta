.class public interface abstract annotation Lorg/chromium/media/VideoCodecProfile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE_USE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final AV1PROFILE_MAX:I = 0x1a

.field public static final AV1PROFILE_MIN:I = 0x18

.field public static final AV1PROFILE_PROFILE_HIGH:I = 0x19

.field public static final AV1PROFILE_PROFILE_MAIN:I = 0x18

.field public static final AV1PROFILE_PROFILE_PRO:I = 0x1a

.field public static final DOLBYVISION_PROFILE0:I = 0x13

.field public static final DOLBYVISION_PROFILE5:I = 0x15

.field public static final DOLBYVISION_PROFILE7:I = 0x16

.field public static final DOLBYVISION_PROFILE8:I = 0x1b

.field public static final DOLBYVISION_PROFILE9:I = 0x1c

.field public static final H264PROFILE_BASELINE:I = 0x0

.field public static final H264PROFILE_EXTENDED:I = 0x2

.field public static final H264PROFILE_HIGH:I = 0x3

.field public static final H264PROFILE_HIGH10PROFILE:I = 0x4

.field public static final H264PROFILE_HIGH422PROFILE:I = 0x5

.field public static final H264PROFILE_HIGH444PREDICTIVEPROFILE:I = 0x6

.field public static final H264PROFILE_MAIN:I = 0x1

.field public static final H264PROFILE_MAX:I = 0xa

.field public static final H264PROFILE_MIN:I = 0x0

.field public static final H264PROFILE_MULTIVIEWHIGH:I = 0xa

.field public static final H264PROFILE_SCALABLEBASELINE:I = 0x7

.field public static final H264PROFILE_SCALABLEHIGH:I = 0x8

.field public static final H264PROFILE_STEREOHIGH:I = 0x9

.field public static final HEVCPROFILE_3D_MAIN:I = 0x21

.field public static final HEVCPROFILE_EXT_MAX:I = 0x24

.field public static final HEVCPROFILE_EXT_MIN:I = 0x1d

.field public static final HEVCPROFILE_HIGH_THROUGHPUT:I = 0x1e

.field public static final HEVCPROFILE_HIGH_THROUGHPUT_SCREEN_EXTENDED:I = 0x24

.field public static final HEVCPROFILE_MAIN:I = 0x10

.field public static final HEVCPROFILE_MAIN10:I = 0x11

.field public static final HEVCPROFILE_MAIN_STILL_PICTURE:I = 0x12

.field public static final HEVCPROFILE_MAX:I = 0x12

.field public static final HEVCPROFILE_MIN:I = 0x10

.field public static final HEVCPROFILE_MULTIVIEW_MAIN:I = 0x1f

.field public static final HEVCPROFILE_REXT:I = 0x1d

.field public static final HEVCPROFILE_SCALABLE_MAIN:I = 0x20

.field public static final HEVCPROFILE_SCALABLE_REXT:I = 0x23

.field public static final HEVCPROFILE_SCREEN_EXTENDED:I = 0x22

.field public static final THEORAPROFILE_ANY:I = 0x17

.field public static final THEORAPROFILE_MAX:I = 0x17

.field public static final THEORAPROFILE_MIN:I = 0x17

.field public static final VIDEO_CODEC_PROFILE_MAX:I = 0x33

.field public static final VIDEO_CODEC_PROFILE_MIN:I = -0x1

.field public static final VIDEO_CODEC_PROFILE_UNKNOWN:I = -0x1

.field public static final VP8PROFILE_ANY:I = 0xb

.field public static final VP8PROFILE_MAX:I = 0xb

.field public static final VP8PROFILE_MIN:I = 0xb

.field public static final VP9PROFILE_MAX:I = 0xf

.field public static final VP9PROFILE_MIN:I = 0xc

.field public static final VP9PROFILE_PROFILE0:I = 0xc

.field public static final VP9PROFILE_PROFILE1:I = 0xd

.field public static final VP9PROFILE_PROFILE2:I = 0xe

.field public static final VP9PROFILE_PROFILE3:I = 0xf

.field public static final VVCPROFILE_MAIN10:I = 0x25

.field public static final VVCPROFILE_MAIN10_444:I = 0x29

.field public static final VVCPROFILE_MAIN10_444_STILL_PICTURE:I = 0x31

.field public static final VVCPROFILE_MAIN10_STILL_PICTURE:I = 0x2f

.field public static final VVCPROFILE_MAIN12:I = 0x26

.field public static final VVCPROFILE_MAIN12_444:I = 0x2a

.field public static final VVCPROFILE_MAIN12_444_INTRA:I = 0x2c

.field public static final VVCPROFILE_MAIN12_444_STILL_PICTURE:I = 0x32

.field public static final VVCPROFILE_MAIN12_INTRA:I = 0x27

.field public static final VVCPROFILE_MAIN12_STILL_PICTURE:I = 0x30

.field public static final VVCPROFILE_MAIN16_444:I = 0x2b

.field public static final VVCPROFILE_MAIN16_444_INTRA:I = 0x2d

.field public static final VVCPROFILE_MAIN16_444_STILL_PICTURE:I = 0x33

.field public static final VVCPROFILE_MAX:I = 0x33

.field public static final VVCPROFILE_MIN:I = 0x25

.field public static final VVCPROFILE_MULTILAYER_MAIN10_444:I = 0x2e

.field public static final VVCPROIFLE_MULTILAYER_MAIN10:I = 0x28
