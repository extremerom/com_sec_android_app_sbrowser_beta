.class public final Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0008\n\u0002\u0010\u0006\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008B\n\u0002\u0018\u0002\n\u0002\u0008\u001e\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u00b5\u0002\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0010\u0008\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d\u0012\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010 \u00a2\u0006\u0002\u0010!J\u0006\u0010b\u001a\u00020cJ\u000b\u0010d\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010e\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010f\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010g\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003\u00a2\u0006\u0002\u0010\'J\u000b\u0010h\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010i\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003\u00a2\u0006\u0002\u0010\'J\u0010\u0010j\u001a\u0004\u0018\u00010\u0014H\u00c6\u0003\u00a2\u0006\u0002\u0010TJ\u0010\u0010k\u001a\u0004\u0018\u00010\u0014H\u00c6\u0003\u00a2\u0006\u0002\u0010TJ\u000b\u0010l\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010m\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003\u00a2\u0006\u0002\u0010\'J\u0010\u0010n\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003\u00a2\u0006\u0002\u0010\'J\u000b\u0010o\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010p\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003\u00a2\u0006\u0002\u0010\'J\u0010\u0010q\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003\u00a2\u0006\u0002\u0010\'J\u0010\u0010r\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003\u00a2\u0006\u0002\u0010\'J\u0010\u0010s\u001a\u0004\u0018\u00010\u001dH\u00c6\u0003\u00a2\u0006\u0002\u0010;J\u000b\u0010t\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010u\u001a\u0004\u0018\u00010 H\u00c6\u0003J\t\u0010v\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010w\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010x\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003\u00a2\u0006\u0002\u0010\'J\u0010\u0010y\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003\u00a2\u0006\u0002\u0010\'J\u0011\u0010z\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000bH\u00c6\u0003J\u000b\u0010{\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010|\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u00be\u0002\u0010}\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00082\u0010\u0008\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00142\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010 H\u00c6\u0001\u00a2\u0006\u0002\u0010~J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0003J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0008J\u0014\u0010\u007f\u001a\u00020\u001d2\t\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\u0010\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u0008H\u0007J\u0010\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u0008H\u0007J\u0010\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0008H\u0007J\u0010\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0008H\u0007J\u000b\u0010\u0081\u0001\u001a\u00030\u0082\u0001H\u00d6\u0001J\u0014\u0010\n\u001a\u00020\u00002\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000bJ\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0003J\u000e\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0003J\u000e\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u001dJ\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0003J\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0008J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0003J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0008J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0003J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0003J\u000e\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u0003J\u000e\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020 J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0014J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u0003J\n\u0010\u0083\u0001\u001a\u00020\u0003H\u00d6\u0001J\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0008J\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0003R\u001c\u0010\r\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\u001e\u0010\t\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010*\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\u001e\u0010\u001b\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010*\u001a\u0004\u0008+\u0010\'\"\u0004\u0008,\u0010)R\u001e\u0010\u001a\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010*\u001a\u0004\u0008-\u0010\'\"\u0004\u0008.\u0010)R\u001e\u0010\u0019\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010*\u001a\u0004\u0008/\u0010\'\"\u0004\u00080\u0010)R\u001e\u0010\u0018\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010*\u001a\u0004\u00081\u0010\'\"\u0004\u00082\u0010)R\"\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u00104\"\u0004\u00085\u00106R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u0010#\"\u0004\u00088\u0010%R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u0010#\"\u0004\u0008:\u0010%R\u001e\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010>\u001a\u0004\u0008\u001c\u0010;\"\u0004\u0008<\u0010=R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u0010#\"\u0004\u0008@\u0010%R\u001e\u0010\u0010\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010*\u001a\u0004\u0008A\u0010\'\"\u0004\u0008B\u0010)R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008C\u0010#\"\u0004\u0008D\u0010%R\u001e\u0010\u0012\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010*\u001a\u0004\u0008E\u0010\'\"\u0004\u0008F\u0010)R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008G\u0010#\"\u0004\u0008H\u0010%R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008I\u0010#\"\u0004\u0008J\u0010%R\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008K\u0010#\"\u0004\u0008L\u0010%R\u001c\u0010\u001f\u001a\u0004\u0018\u00010 X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008M\u0010N\"\u0004\u0008O\u0010PR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Q\u0010#\"\u0004\u0008R\u0010%R\u001e\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010W\u001a\u0004\u0008S\u0010T\"\u0004\u0008U\u0010VR\u001e\u0010\u0015\u001a\u0004\u0018\u00010\u0014X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010W\u001a\u0004\u0008X\u0010T\"\u0004\u0008Y\u0010VR\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010*\u001a\u0004\u0008Z\u0010\'\"\u0004\u0008[\u0010)R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\\\u0010#\"\u0004\u0008]\u0010%R\u001e\u0010\u0017\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010*\u001a\u0004\u0008^\u0010\'\"\u0004\u0008_\u0010)R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008`\u0010#\"\u0004\u0008a\u0010%\u00a8\u0006\u0084\u0001"
    }
    d2 = {
        "Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;",
        "",
        "insightMessageTitle",
        "",
        "insightMessageDescription",
        "reasonDescription",
        "momentId",
        "startAt",
        "",
        "endAt",
        "imagePathList",
        "",
        "title",
        "description",
        "listenDescription",
        "mediaSessionMusicTitle",
        "mediaSessionMusicDuration",
        "mediaSessionVideoTitle",
        "mediaSessionVideoDuration",
        "repLocationLatitude",
        "",
        "repLocationLongitude",
        "videoPath",
        "videoDuration",
        "filteredCount",
        "failedOnDeviceCount",
        "failedMinimumImageCount",
        "failedMinimumContentsCount",
        "isWeeklyMoment",
        "",
        "momentSaEventId",
        "momentSaLog",
        "Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;)V",
        "getDescription",
        "()Ljava/lang/String;",
        "setDescription",
        "(Ljava/lang/String;)V",
        "getEndAt",
        "()Ljava/lang/Long;",
        "setEndAt",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "getFailedMinimumContentsCount",
        "setFailedMinimumContentsCount",
        "getFailedMinimumImageCount",
        "setFailedMinimumImageCount",
        "getFailedOnDeviceCount",
        "setFailedOnDeviceCount",
        "getFilteredCount",
        "setFilteredCount",
        "getImagePathList",
        "()Ljava/util/List;",
        "setImagePathList",
        "(Ljava/util/List;)V",
        "getInsightMessageDescription",
        "setInsightMessageDescription",
        "getInsightMessageTitle",
        "setInsightMessageTitle",
        "()Ljava/lang/Boolean;",
        "setWeeklyMoment",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "getListenDescription",
        "setListenDescription",
        "getMediaSessionMusicDuration",
        "setMediaSessionMusicDuration",
        "getMediaSessionMusicTitle",
        "setMediaSessionMusicTitle",
        "getMediaSessionVideoDuration",
        "setMediaSessionVideoDuration",
        "getMediaSessionVideoTitle",
        "setMediaSessionVideoTitle",
        "getMomentId",
        "setMomentId",
        "getMomentSaEventId",
        "setMomentSaEventId",
        "getMomentSaLog",
        "()Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;",
        "setMomentSaLog",
        "(Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;)V",
        "getReasonDescription",
        "setReasonDescription",
        "getRepLocationLatitude",
        "()Ljava/lang/Double;",
        "setRepLocationLatitude",
        "(Ljava/lang/Double;)V",
        "Ljava/lang/Double;",
        "getRepLocationLongitude",
        "setRepLocationLongitude",
        "getStartAt",
        "setStartAt",
        "getTitle",
        "setTitle",
        "getVideoDuration",
        "setVideoDuration",
        "getVideoPath",
        "setVideoPath",
        "build",
        "Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component19",
        "component2",
        "component20",
        "component21",
        "component22",
        "component23",
        "component24",
        "component25",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;)Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "deepsky-sdk-aisuggestion-1.6.13_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private description:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private endAt:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private failedMinimumContentsCount:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private failedMinimumImageCount:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private failedOnDeviceCount:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private filteredCount:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private imagePathList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private insightMessageDescription:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private insightMessageTitle:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isWeeklyMoment:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private listenDescription:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mediaSessionMusicDuration:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mediaSessionMusicTitle:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mediaSessionVideoDuration:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mediaSessionVideoTitle:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private momentId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private momentSaEventId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private momentSaLog:Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private reasonDescription:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private repLocationLatitude:Ljava/lang/Double;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private repLocationLongitude:Ljava/lang/Double;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private startAt:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private videoDuration:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private videoPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 28

    move-object/from16 v0, p0

    const v26, 0x1ffffff

    const/16 v27, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-direct/range {v0 .. v27}, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;ILtb/f;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p18    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p19    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p20    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p21    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p22    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p23    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p24    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p25    # Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p3

    const-string v2, "reasonDescription"

    invoke-static {p3, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v2, p1

    iput-object v2, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->insightMessageTitle:Ljava/lang/String;

    move-object v2, p2

    iput-object v2, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->insightMessageDescription:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->reasonDescription:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->momentId:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->startAt:Ljava/lang/Long;

    move-object v1, p6

    iput-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->endAt:Ljava/lang/Long;

    move-object v1, p7

    iput-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->imagePathList:Ljava/util/List;

    move-object v1, p8

    iput-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->title:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->description:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->listenDescription:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->mediaSessionMusicTitle:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->mediaSessionMusicDuration:Ljava/lang/Long;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->mediaSessionVideoTitle:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->mediaSessionVideoDuration:Ljava/lang/Long;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->repLocationLatitude:Ljava/lang/Double;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->repLocationLongitude:Ljava/lang/Double;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->videoPath:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->videoDuration:Ljava/lang/Long;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->filteredCount:Ljava/lang/Long;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->failedOnDeviceCount:Ljava/lang/Long;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->failedMinimumImageCount:Ljava/lang/Long;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->failedMinimumContentsCount:Ljava/lang/Long;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->isWeeklyMoment:Ljava/lang/Boolean;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->momentSaEventId:Ljava/lang/String;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->momentSaLog:Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;ILtb/f;)V
    .locals 26

    move/from16 v0, p26

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    const-string v4, ""

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    const/4 v8, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    const/4 v9, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    const/4 v10, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    const/4 v11, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    const/4 v12, 0x0

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    const/4 v13, 0x0

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_c

    const/4 v14, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_d

    const/4 v15, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_f

    const/16 v16, 0x0

    goto :goto_f

    :cond_f
    move-object/from16 v16, p16

    :goto_f
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_10

    const/16 v17, 0x0

    goto :goto_10

    :cond_10
    move-object/from16 v17, p17

    :goto_10
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    if-eqz v18, :cond_11

    const/16 v18, 0x0

    goto :goto_11

    :cond_11
    move-object/from16 v18, p18

    :goto_11
    const/high16 v19, 0x40000

    and-int v19, v0, v19

    if-eqz v19, :cond_12

    const/16 v19, 0x0

    goto :goto_12

    :cond_12
    move-object/from16 v19, p19

    :goto_12
    const/high16 v20, 0x80000

    and-int v20, v0, v20

    if-eqz v20, :cond_13

    const/16 v20, 0x0

    goto :goto_13

    :cond_13
    move-object/from16 v20, p20

    :goto_13
    const/high16 v21, 0x100000

    and-int v21, v0, v21

    if-eqz v21, :cond_14

    const/16 v21, 0x0

    goto :goto_14

    :cond_14
    move-object/from16 v21, p21

    :goto_14
    const/high16 v22, 0x200000

    and-int v22, v0, v22

    if-eqz v22, :cond_15

    const/16 v22, 0x0

    goto :goto_15

    :cond_15
    move-object/from16 v22, p22

    :goto_15
    const/high16 v23, 0x400000

    and-int v23, v0, v23

    if-eqz v23, :cond_16

    const/16 v23, 0x0

    goto :goto_16

    :cond_16
    move-object/from16 v23, p23

    :goto_16
    const/high16 v24, 0x800000

    and-int v24, v0, v24

    if-eqz v24, :cond_17

    const/16 v24, 0x0

    goto :goto_17

    :cond_17
    move-object/from16 v24, p24

    :goto_17
    const/high16 v25, 0x1000000

    and-int v0, v0, v25

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    goto :goto_18

    :cond_18
    move-object/from16 v0, p25

    :goto_18
    move-object/from16 p1, v1

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p14, v15

    move-object/from16 p15, v2

    move-object/from16 p16, v16

    move-object/from16 p17, v17

    move-object/from16 p18, v18

    move-object/from16 p19, v19

    move-object/from16 p20, v20

    move-object/from16 p21, v21

    move-object/from16 p22, v22

    move-object/from16 p23, v23

    move-object/from16 p24, v24

    move-object/from16 p25, v0

    invoke-direct/range {p0 .. p25}, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;ILjava/lang/Object;)Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p26

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->insightMessageTitle:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->insightMessageDescription:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->reasonDescription:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->momentId:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->startAt:Ljava/lang/Long;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->endAt:Ljava/lang/Long;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->imagePathList:Ljava/util/List;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->title:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->description:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->listenDescription:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->mediaSessionMusicTitle:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->mediaSessionMusicDuration:Ljava/lang/Long;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->mediaSessionVideoTitle:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->mediaSessionVideoDuration:Ljava/lang/Long;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->repLocationLatitude:Ljava/lang/Double;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p15, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->repLocationLongitude:Ljava/lang/Double;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p16, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->videoPath:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p17, v15

    if-eqz v16, :cond_11

    iget-object v15, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->videoDuration:Ljava/lang/Long;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p18, v15

    if-eqz v16, :cond_12

    iget-object v15, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->filteredCount:Ljava/lang/Long;

    goto :goto_12

    :cond_12
    move-object/from16 v15, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move-object/from16 p19, v15

    if-eqz v16, :cond_13

    iget-object v15, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->failedOnDeviceCount:Ljava/lang/Long;

    goto :goto_13

    :cond_13
    move-object/from16 v15, p20

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move-object/from16 p20, v15

    if-eqz v16, :cond_14

    iget-object v15, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->failedMinimumImageCount:Ljava/lang/Long;

    goto :goto_14

    :cond_14
    move-object/from16 v15, p21

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    move-object/from16 p21, v15

    if-eqz v16, :cond_15

    iget-object v15, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->failedMinimumContentsCount:Ljava/lang/Long;

    goto :goto_15

    :cond_15
    move-object/from16 v15, p22

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, v1, v16

    move-object/from16 p22, v15

    if-eqz v16, :cond_16

    iget-object v15, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->isWeeklyMoment:Ljava/lang/Boolean;

    goto :goto_16

    :cond_16
    move-object/from16 v15, p23

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, v1, v16

    move-object/from16 p23, v15

    if-eqz v16, :cond_17

    iget-object v15, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->momentSaEventId:Ljava/lang/String;

    goto :goto_17

    :cond_17
    move-object/from16 v15, p24

    :goto_17
    const/high16 v16, 0x1000000

    and-int v1, v1, v16

    if-eqz v1, :cond_18

    iget-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->momentSaLog:Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;

    goto :goto_18

    :cond_18
    move-object/from16 v1, p25

    :goto_18
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p24, v15

    move-object/from16 p25, v1

    invoke-virtual/range {p0 .. p25}, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;)Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final build()Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;
    .locals 34
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->insightMessageTitle:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object v6, v1

    :goto_0
    iget-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->insightMessageDescription:Ljava/lang/String;

    if-nez v1, :cond_1

    move-object v7, v2

    goto :goto_1

    :cond_1
    move-object v7, v1

    :goto_1
    iget-object v5, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->reasonDescription:Ljava/lang/String;

    iget-object v8, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->momentId:Ljava/lang/String;

    if-eqz v8, :cond_6

    iget-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->startAt:Ljava/lang/Long;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->endAt:Ljava/lang/Long;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iget-object v13, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->imagePathList:Ljava/util/List;

    iget-object v14, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->title:Ljava/lang/String;

    if-eqz v14, :cond_3

    iget-object v15, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->description:Ljava/lang/String;

    if-eqz v15, :cond_2

    iget-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->listenDescription:Ljava/lang/String;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->mediaSessionMusicTitle:Ljava/lang/String;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->mediaSessionMusicDuration:Ljava/lang/Long;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->mediaSessionVideoTitle:Ljava/lang/String;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->mediaSessionVideoDuration:Ljava/lang/Long;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->repLocationLatitude:Ljava/lang/Double;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->repLocationLongitude:Ljava/lang/Double;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->videoPath:Ljava/lang/String;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->videoDuration:Ljava/lang/Long;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->filteredCount:Ljava/lang/Long;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->failedOnDeviceCount:Ljava/lang/Long;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->failedMinimumImageCount:Ljava/lang/Long;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->failedMinimumContentsCount:Ljava/lang/Long;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->isWeeklyMoment:Ljava/lang/Boolean;

    move-object/from16 v29, v1

    iget-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->momentSaEventId:Ljava/lang/String;

    move-object/from16 v30, v1

    iget-object v0, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->momentSaLog:Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;

    move-object/from16 v31, v0

    new-instance v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;

    move-object v3, v0

    const/16 v32, 0x1

    const/16 v33, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v3 .. v33}, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;ILtb/f;)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "description is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "title is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endAt is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "startAt is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "momentId is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final component1()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->insightMessageTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final component10()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->listenDescription:Ljava/lang/String;

    return-object p0
.end method

.method public final component11()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->mediaSessionMusicTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final component12()Ljava/lang/Long;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->mediaSessionMusicDuration:Ljava/lang/Long;

    return-object p0
.end method

.method public final component13()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->mediaSessionVideoTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final component14()Ljava/lang/Long;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->mediaSessionVideoDuration:Ljava/lang/Long;

    return-object p0
.end method

.method public final component15()Ljava/lang/Double;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->repLocationLatitude:Ljava/lang/Double;

    return-object p0
.end method

.method public final component16()Ljava/lang/Double;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->repLocationLongitude:Ljava/lang/Double;

    return-object p0
.end method

.method public final component17()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->videoPath:Ljava/lang/String;

    return-object p0
.end method

.method public final component18()Ljava/lang/Long;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->videoDuration:Ljava/lang/Long;

    return-object p0
.end method

.method public final component19()Ljava/lang/Long;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->filteredCount:Ljava/lang/Long;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->insightMessageDescription:Ljava/lang/String;

    return-object p0
.end method

.method public final component20()Ljava/lang/Long;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->failedOnDeviceCount:Ljava/lang/Long;

    return-object p0
.end method

.method public final component21()Ljava/lang/Long;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->failedMinimumImageCount:Ljava/lang/Long;

    return-object p0
.end method

.method public final component22()Ljava/lang/Long;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->failedMinimumContentsCount:Ljava/lang/Long;

    return-object p0
.end method

.method public final component23()Ljava/lang/Boolean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->isWeeklyMoment:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final component24()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->momentSaEventId:Ljava/lang/String;

    return-object p0
.end method

.method public final component25()Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->momentSaLog:Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->reasonDescription:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->momentId:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Ljava/lang/Long;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->startAt:Ljava/lang/Long;

    return-object p0
.end method

.method public final component6()Ljava/lang/Long;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->endAt:Ljava/lang/Long;

    return-object p0
.end method

.method public final component7()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->imagePathList:Ljava/util/List;

    return-object p0
.end method

.method public final component8()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final component9()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;)Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;
    .locals 27
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p18    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p19    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p20    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p21    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p22    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p23    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p24    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p25    # Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;",
            ")",
            "Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    const-string v0, "reasonDescription"

    move-object/from16 p0, v1

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v26, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v25}, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;)V

    return-object v26
.end method

.method public final description(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "description"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final endAt(J)Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->endAt:Ljava/lang/Long;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;

    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->insightMessageTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->insightMessageTitle:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->insightMessageDescription:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->insightMessageDescription:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->reasonDescription:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->reasonDescription:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->momentId:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->momentId:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->startAt:Ljava/lang/Long;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->startAt:Ljava/lang/Long;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->endAt:Ljava/lang/Long;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->endAt:Ljava/lang/Long;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->imagePathList:Ljava/util/List;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->imagePathList:Ljava/util/List;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->listenDescription:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->listenDescription:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->mediaSessionMusicTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->mediaSessionMusicTitle:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->mediaSessionMusicDuration:Ljava/lang/Long;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->mediaSessionMusicDuration:Ljava/lang/Long;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->mediaSessionVideoTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->mediaSessionVideoTitle:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->mediaSessionVideoDuration:Ljava/lang/Long;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->mediaSessionVideoDuration:Ljava/lang/Long;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->repLocationLatitude:Ljava/lang/Double;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->repLocationLatitude:Ljava/lang/Double;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->repLocationLongitude:Ljava/lang/Double;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->repLocationLongitude:Ljava/lang/Double;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->videoPath:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->videoPath:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->videoDuration:Ljava/lang/Long;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->videoDuration:Ljava/lang/Long;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->filteredCount:Ljava/lang/Long;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->filteredCount:Ljava/lang/Long;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->failedOnDeviceCount:Ljava/lang/Long;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->failedOnDeviceCount:Ljava/lang/Long;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->failedMinimumImageCount:Ljava/lang/Long;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->failedMinimumImageCount:Ljava/lang/Long;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->failedMinimumContentsCount:Ljava/lang/Long;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->failedMinimumContentsCount:Ljava/lang/Long;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->isWeeklyMoment:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->isWeeklyMoment:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    :cond_18
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->momentSaEventId:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->momentSaEventId:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    :cond_19
    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->momentSaLog:Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;

    iget-object p1, p1, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->momentSaLog:Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    return v2

    :cond_1a
    return v0
.end method

.method public final failedMinimumContentsCount(J)Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->failedMinimumContentsCount:Ljava/lang/Long;

    return-object p0
.end method

.method public final failedMinimumImageCount(J)Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->failedMinimumImageCount:Ljava/lang/Long;

    return-object p0
.end method

.method public final failedOnDeviceCount(J)Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->failedOnDeviceCount:Ljava/lang/Long;

    return-object p0
.end method

.method public final filteredCount(J)Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->filteredCount:Ljava/lang/Long;

    return-object p0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final getEndAt()Ljava/lang/Long;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->endAt:Ljava/lang/Long;

    return-object p0
.end method

.method public final getFailedMinimumContentsCount()Ljava/lang/Long;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->failedMinimumContentsCount:Ljava/lang/Long;

    return-object p0
.end method

.method public final getFailedMinimumImageCount()Ljava/lang/Long;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->failedMinimumImageCount:Ljava/lang/Long;

    return-object p0
.end method

.method public final getFailedOnDeviceCount()Ljava/lang/Long;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->failedOnDeviceCount:Ljava/lang/Long;

    return-object p0
.end method

.method public final getFilteredCount()Ljava/lang/Long;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->filteredCount:Ljava/lang/Long;

    return-object p0
.end method

.method public final getImagePathList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->imagePathList:Ljava/util/List;

    return-object p0
.end method

.method public final getInsightMessageDescription()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->insightMessageDescription:Ljava/lang/String;

    return-object p0
.end method

.method public final getInsightMessageTitle()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->insightMessageTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final getListenDescription()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->listenDescription:Ljava/lang/String;

    return-object p0
.end method

.method public final getMediaSessionMusicDuration()Ljava/lang/Long;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->mediaSessionMusicDuration:Ljava/lang/Long;

    return-object p0
.end method

.method public final getMediaSessionMusicTitle()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->mediaSessionMusicTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final getMediaSessionVideoDuration()Ljava/lang/Long;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->mediaSessionVideoDuration:Ljava/lang/Long;

    return-object p0
.end method

.method public final getMediaSessionVideoTitle()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->mediaSessionVideoTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final getMomentId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->momentId:Ljava/lang/String;

    return-object p0
.end method

.method public final getMomentSaEventId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->momentSaEventId:Ljava/lang/String;

    return-object p0
.end method

.method public final getMomentSaLog()Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->momentSaLog:Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;

    return-object p0
.end method

.method public final getReasonDescription()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->reasonDescription:Ljava/lang/String;

    return-object p0
.end method

.method public final getRepLocationLatitude()Ljava/lang/Double;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->repLocationLatitude:Ljava/lang/Double;

    return-object p0
.end method

.method public final getRepLocationLongitude()Ljava/lang/Double;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->repLocationLongitude:Ljava/lang/Double;

    return-object p0
.end method

.method public final getStartAt()Ljava/lang/Long;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->startAt:Ljava/lang/Long;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final getVideoDuration()Ljava/lang/Long;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->videoDuration:Ljava/lang/Long;

    return-object p0
.end method

.method public final getVideoPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->videoPath:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->insightMessageTitle:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->insightMessageDescription:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->reasonDescription:Ljava/lang/String;

    invoke-static {v0, v2, v3}, LB/e;->d(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->momentId:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->startAt:Ljava/lang/Long;

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->endAt:Ljava/lang/Long;

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->imagePathList:Ljava/util/List;

    if-nez v3, :cond_5

    move v3, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->title:Ljava/lang/String;

    if-nez v3, :cond_6

    move v3, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->description:Ljava/lang/String;

    if-nez v3, :cond_7

    move v3, v1

    goto :goto_7

    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->listenDescription:Ljava/lang/String;

    if-nez v3, :cond_8

    move v3, v1

    goto :goto_8

    :cond_8
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_8
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->mediaSessionMusicTitle:Ljava/lang/String;

    if-nez v3, :cond_9

    move v3, v1

    goto :goto_9

    :cond_9
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_9
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->mediaSessionMusicDuration:Ljava/lang/Long;

    if-nez v3, :cond_a

    move v3, v1

    goto :goto_a

    :cond_a
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_a
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->mediaSessionVideoTitle:Ljava/lang/String;

    if-nez v3, :cond_b

    move v3, v1

    goto :goto_b

    :cond_b
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_b
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->mediaSessionVideoDuration:Ljava/lang/Long;

    if-nez v3, :cond_c

    move v3, v1

    goto :goto_c

    :cond_c
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_c
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->repLocationLatitude:Ljava/lang/Double;

    if-nez v3, :cond_d

    move v3, v1

    goto :goto_d

    :cond_d
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_d
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->repLocationLongitude:Ljava/lang/Double;

    if-nez v3, :cond_e

    move v3, v1

    goto :goto_e

    :cond_e
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_e
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->videoPath:Ljava/lang/String;

    if-nez v3, :cond_f

    move v3, v1

    goto :goto_f

    :cond_f
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_f
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->videoDuration:Ljava/lang/Long;

    if-nez v3, :cond_10

    move v3, v1

    goto :goto_10

    :cond_10
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_10
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->filteredCount:Ljava/lang/Long;

    if-nez v3, :cond_11

    move v3, v1

    goto :goto_11

    :cond_11
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_11
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->failedOnDeviceCount:Ljava/lang/Long;

    if-nez v3, :cond_12

    move v3, v1

    goto :goto_12

    :cond_12
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_12
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->failedMinimumImageCount:Ljava/lang/Long;

    if-nez v3, :cond_13

    move v3, v1

    goto :goto_13

    :cond_13
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_13
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->failedMinimumContentsCount:Ljava/lang/Long;

    if-nez v3, :cond_14

    move v3, v1

    goto :goto_14

    :cond_14
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_14
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->isWeeklyMoment:Ljava/lang/Boolean;

    if-nez v3, :cond_15

    move v3, v1

    goto :goto_15

    :cond_15
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_15
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->momentSaEventId:Ljava/lang/String;

    if-nez v3, :cond_16

    move v3, v1

    goto :goto_16

    :cond_16
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_16
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->momentSaLog:Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;

    if-nez p0, :cond_17

    goto :goto_17

    :cond_17
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_17
    add-int/2addr v0, v1

    return v0
.end method

.method public final imagePathList(Ljava/util/List;)Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "imagePathList"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->imagePathList:Ljava/util/List;

    return-object p0
.end method

.method public final insightMessageDescription(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "insightMessageDescription"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->insightMessageDescription:Ljava/lang/String;

    return-object p0
.end method

.method public final insightMessageTitle(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "insightMessageTitle"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->insightMessageTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final isWeeklyMoment(Z)Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->isWeeklyMoment:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final isWeeklyMoment()Ljava/lang/Boolean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->isWeeklyMoment:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final listenDescription(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "listenDescription"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->listenDescription:Ljava/lang/String;

    return-object p0
.end method

.method public final mediaSessionMusicDuration(J)Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->mediaSessionMusicDuration:Ljava/lang/Long;

    return-object p0
.end method

.method public final mediaSessionMusicTitle(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "mediaSessionMusicTitle"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->mediaSessionMusicTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final mediaSessionVideoDuration(J)Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->mediaSessionVideoDuration:Ljava/lang/Long;

    return-object p0
.end method

.method public final mediaSessionVideoTitle(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "mediaSessionVideoTitle"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->mediaSessionVideoTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final momentId(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "momentId"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->momentId:Ljava/lang/String;

    return-object p0
.end method

.method public final momentSaEventId(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "momentSaEventId"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->momentSaEventId:Ljava/lang/String;

    return-object p0
.end method

.method public final momentSaLog(Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;)Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;
    .locals 1
    .param p1    # Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "momentSaLog"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->momentSaLog:Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;

    return-object p0
.end method

.method public final repLocationLatitude(D)Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->repLocationLatitude:Ljava/lang/Double;

    return-object p0
.end method

.method public final repLocationLongitude(D)Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->repLocationLongitude:Ljava/lang/Double;

    return-object p0
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->description:Ljava/lang/String;

    return-void
.end method

.method public final setEndAt(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->endAt:Ljava/lang/Long;

    return-void
.end method

.method public final setFailedMinimumContentsCount(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->failedMinimumContentsCount:Ljava/lang/Long;

    return-void
.end method

.method public final setFailedMinimumImageCount(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->failedMinimumImageCount:Ljava/lang/Long;

    return-void
.end method

.method public final setFailedOnDeviceCount(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->failedOnDeviceCount:Ljava/lang/Long;

    return-void
.end method

.method public final setFilteredCount(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->filteredCount:Ljava/lang/Long;

    return-void
.end method

.method public final setImagePathList(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->imagePathList:Ljava/util/List;

    return-void
.end method

.method public final setInsightMessageDescription(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->insightMessageDescription:Ljava/lang/String;

    return-void
.end method

.method public final setInsightMessageTitle(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->insightMessageTitle:Ljava/lang/String;

    return-void
.end method

.method public final setListenDescription(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->listenDescription:Ljava/lang/String;

    return-void
.end method

.method public final setMediaSessionMusicDuration(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->mediaSessionMusicDuration:Ljava/lang/Long;

    return-void
.end method

.method public final setMediaSessionMusicTitle(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->mediaSessionMusicTitle:Ljava/lang/String;

    return-void
.end method

.method public final setMediaSessionVideoDuration(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->mediaSessionVideoDuration:Ljava/lang/Long;

    return-void
.end method

.method public final setMediaSessionVideoTitle(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->mediaSessionVideoTitle:Ljava/lang/String;

    return-void
.end method

.method public final setMomentId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->momentId:Ljava/lang/String;

    return-void
.end method

.method public final setMomentSaEventId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->momentSaEventId:Ljava/lang/String;

    return-void
.end method

.method public final setMomentSaLog(Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;)V
    .locals 0
    .param p1    # Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->momentSaLog:Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;

    return-void
.end method

.method public final setReasonDescription(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->reasonDescription:Ljava/lang/String;

    return-void
.end method

.method public final setRepLocationLatitude(Ljava/lang/Double;)V
    .locals 0
    .param p1    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->repLocationLatitude:Ljava/lang/Double;

    return-void
.end method

.method public final setRepLocationLongitude(Ljava/lang/Double;)V
    .locals 0
    .param p1    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->repLocationLongitude:Ljava/lang/Double;

    return-void
.end method

.method public final setStartAt(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->startAt:Ljava/lang/Long;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->title:Ljava/lang/String;

    return-void
.end method

.method public final setVideoDuration(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->videoDuration:Ljava/lang/Long;

    return-void
.end method

.method public final setVideoPath(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->videoPath:Ljava/lang/String;

    return-void
.end method

.method public final setWeeklyMoment(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->isWeeklyMoment:Ljava/lang/Boolean;

    return-void
.end method

.method public final startAt(J)Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->startAt:Ljava/lang/Long;

    return-object p0
.end method

.method public final title(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "title"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 27
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->insightMessageTitle:Ljava/lang/String;

    iget-object v2, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->insightMessageDescription:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->reasonDescription:Ljava/lang/String;

    iget-object v4, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->momentId:Ljava/lang/String;

    iget-object v5, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->startAt:Ljava/lang/Long;

    iget-object v6, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->endAt:Ljava/lang/Long;

    iget-object v7, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->imagePathList:Ljava/util/List;

    iget-object v8, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->title:Ljava/lang/String;

    iget-object v9, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->description:Ljava/lang/String;

    iget-object v10, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->listenDescription:Ljava/lang/String;

    iget-object v11, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->mediaSessionMusicTitle:Ljava/lang/String;

    iget-object v12, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->mediaSessionMusicDuration:Ljava/lang/Long;

    iget-object v13, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->mediaSessionVideoTitle:Ljava/lang/String;

    iget-object v14, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->mediaSessionVideoDuration:Ljava/lang/Long;

    iget-object v15, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->repLocationLatitude:Ljava/lang/Double;

    move-object/from16 v16, v15

    iget-object v15, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->repLocationLongitude:Ljava/lang/Double;

    move-object/from16 v17, v15

    iget-object v15, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->videoPath:Ljava/lang/String;

    move-object/from16 v18, v15

    iget-object v15, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->videoDuration:Ljava/lang/Long;

    move-object/from16 v19, v15

    iget-object v15, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->filteredCount:Ljava/lang/Long;

    move-object/from16 v20, v15

    iget-object v15, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->failedOnDeviceCount:Ljava/lang/Long;

    move-object/from16 v21, v15

    iget-object v15, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->failedMinimumImageCount:Ljava/lang/Long;

    move-object/from16 v22, v15

    iget-object v15, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->failedMinimumContentsCount:Ljava/lang/Long;

    move-object/from16 v23, v15

    iget-object v15, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->isWeeklyMoment:Ljava/lang/Boolean;

    move-object/from16 v24, v15

    iget-object v15, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->momentSaEventId:Ljava/lang/String;

    iget-object v0, v0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->momentSaLog:Lcom/samsung/android/sdk/aisuggestion/schema/moment/MomentSALogDataDocument;

    move-object/from16 p0, v0

    const-string v0, "Builder(insightMessageTitle="

    move-object/from16 v25, v15

    const-string v15, ", insightMessageDescription="

    move-object/from16 v26, v14

    const-string v14, ", reasonDescription="

    invoke-static {v0, v1, v15, v2, v14}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", momentId="

    const-string v2, ", startAt="

    invoke-static {v0, v3, v1, v4, v2}, LB/e;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", endAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", imagePathList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", listenDescription="

    const-string v2, ", mediaSessionMusicTitle="

    invoke-static {v0, v9, v1, v10, v2}, LB/e;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mediaSessionMusicDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mediaSessionVideoTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mediaSessionVideoDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", repLocationLatitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", repLocationLongitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", videoPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", videoDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", filteredCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", failedOnDeviceCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", failedMinimumImageCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", failedMinimumContentsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isWeeklyMoment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", momentSaEventId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", momentSaLog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final videoDuration(J)Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->videoDuration:Ljava/lang/Long;

    return-object p0
.end method

.method public final videoPath(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "videoPath"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/moment/DailyMomentDataDocument$Builder;->videoPath:Ljava/lang/String;

    return-object p0
.end method
