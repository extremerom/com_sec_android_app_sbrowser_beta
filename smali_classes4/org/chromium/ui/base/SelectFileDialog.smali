.class public Lorg/chromium/ui/base/SelectFileDialog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/base/WindowAndroid$IntentCallback;
.implements Lorg/chromium/ui/base/PhotoPickerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/base/SelectFileDialog$GetCameraIntentTask;,
        Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;,
        Lorg/chromium/ui/base/SelectFileDialog$FilePathSelectedTask;,
        Lorg/chromium/ui/base/SelectFileDialog$RecordUploadMetricsTask;,
        Lorg/chromium/ui/base/SelectFileDialog$Natives;,
        Lorg/chromium/ui/base/SelectFileDialog$FileSelectedUploadMethod;,
        Lorg/chromium/ui/base/SelectFileDialog$FileSelectedAction;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DURATION_BEFORE_FILE_CLEAN_UP_IN_MILLIS:J

.field private static final POPULAR_IMAGE_EXTENSIONS:[Ljava/lang/String;

.field private static final POPULAR_VIDEO_EXTENSIONS:[Ljava/lang/String;

.field static final SELECT_FILE_DIALOG_SCOPE_COUNT:I = 0x4

.field static final SELECT_FILE_DIALOG_SCOPE_GENERIC:I = 0x0

.field static final SELECT_FILE_DIALOG_SCOPE_IMAGES:I = 0x1

.field static final SELECT_FILE_DIALOG_SCOPE_IMAGES_AND_VIDEOS:I = 0x3

.field static final SELECT_FILE_DIALOG_SCOPE_VIDEOS:I = 0x2

.field static final SHOWING_ANDROID_PICKER_DIRECT:I = 0x1

.field static final SHOWING_ANDROID_PICKER_INDIRECT:I = 0x3

.field static final SHOWING_CHROME_PICKER:I = 0x0

.field static final SHOWING_ENUM_COUNT:I = 0x4

.field static final SHOWING_SUPPRESSED:I = 0x2

.field private static sPhotoPicker:Lorg/chromium/ui/base/PhotoPicker;

.field private static sPhotoPickerDelegate:Lorg/chromium/ui/base/PhotoPickerDelegate;

.field private static sWindowAndroidForTesting:Lorg/chromium/ui/base/WindowAndroid;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private mAllowMultiple:Z

.field private mCameraOutputUri:Landroid/net/Uri;

.field private mCapture:Z

.field private mFileTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIntentAction:Ljava/lang/String;

.field private mMediaPickerWasUsed:Z

.field private mMimeTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeSelectFileDialog:J

.field private mSupportsAudioCapture:Z

.field private mSupportsImageCapture:Z

.field private mSupportsVideoCapture:Z

.field private mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lorg/chromium/ui/base/SelectFileDialog;->DURATION_BEFORE_FILE_CLEAN_UP_IN_MILLIS:J

    const-string v10, ".xcf"

    const-string v11, ".webp"

    const-string v2, ".apng"

    const-string v3, ".bmp"

    const-string v4, ".gif"

    const-string v5, ".jpeg"

    const-string v6, ".jpg"

    const-string v7, ".png"

    const-string v8, ".tif"

    const-string v9, ".tiff"

    filled-new-array/range {v2 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/ui/base/SelectFileDialog;->POPULAR_IMAGE_EXTENSIONS:[Ljava/lang/String;

    const-string v12, ".webm"

    const-string v13, ".mkv"

    const-string v1, ".asf"

    const-string v2, ".avhcd"

    const-string v3, ".avi"

    const-string v4, ".divx"

    const-string v5, ".flv"

    const-string v6, ".mov"

    const-string v7, ".mp4"

    const-string v8, ".mpeg"

    const-string v9, ".mpg"

    const-string v10, ".swf"

    const-string v11, ".wmv"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/ui/base/SelectFileDialog;->POPULAR_VIDEO_EXTENSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mNativeSelectFileDialog:J

    return-void
.end method

.method public static synthetic a(Lorg/chromium/ui/base/SelectFileDialog;Z[Ljava/lang/String;[Ljava/lang/String;[I)V
    .locals 6

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/chromium/ui/base/SelectFileDialog;->lambda$selectFile$2(Z[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[I)V

    return-void
.end method

.method private acceptsOnlyType(Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/ui/base/SelectFileDialog;->countAcceptTypesFor(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mMimeTypes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private acceptsType(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mMimeTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mMimeTypes:Ljava/util/List;

    const-string v2, "*/*"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/ui/base/SelectFileDialog;->countAcceptTypesFor(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public static bridge synthetic b(Lorg/chromium/ui/base/SelectFileDialog;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCameraOutputUri:Landroid/net/Uri;

    return-object p0
.end method

.method public static bridge synthetic c(Lorg/chromium/ui/base/SelectFileDialog;)J
    .locals 2

    iget-wide v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mNativeSelectFileDialog:J

    return-wide v0
.end method

.method private captureAudio()Z
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCapture:Z

    if-eqz v0, :cond_0

    const-string v0, "audio"

    invoke-direct {p0, v0}, Lorg/chromium/ui/base/SelectFileDialog;->acceptsOnlyType(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private captureImage()Z
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCapture:Z

    if-eqz v0, :cond_0

    const-string v0, "image"

    invoke-direct {p0, v0}, Lorg/chromium/ui/base/SelectFileDialog;->acceptsOnlyType(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private captureVideo()Z
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCapture:Z

    if-eqz v0, :cond_0

    const-string v0, "video"

    invoke-direct {p0, v0}, Lorg/chromium/ui/base/SelectFileDialog;->acceptsOnlyType(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static convertToSupportedMimeTypes(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/chromium/ui/base/SelectFileDialog;->ensureMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private countAcceptTypesFor(Ljava/lang/String;)I
    .locals 2

    iget-object p0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mMimeTypes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static create(J)Lorg/chromium/ui/base/SelectFileDialog;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/ui/base/SelectFileDialog;

    invoke-direct {v0, p0, p1}, Lorg/chromium/ui/base/SelectFileDialog;-><init>(J)V

    return-object v0
.end method

.method public static bridge synthetic d(Lorg/chromium/ui/base/SelectFileDialog;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCameraOutputUri:Landroid/net/Uri;

    return-void
.end method

.method public static bridge synthetic e(Lorg/chromium/ui/base/SelectFileDialog;)Z
    .locals 1

    const-string v0, "video"

    invoke-direct {p0, v0}, Lorg/chromium/ui/base/SelectFileDialog;->acceptsOnlyType(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static ensureMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p0}, Lorg/chromium/ui/base/SelectFileDialog;->isMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    const-string p0, "application/octet-stream"

    return-object p0
.end method

.method public static bridge synthetic f(Lorg/chromium/ui/base/SelectFileDialog;)Z
    .locals 0

    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->captureImage()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic g(Lorg/chromium/ui/base/SelectFileDialog;Landroid/content/Context;)Ljava/io/File;
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/ui/base/SelectFileDialog;->getFileForImageCapture(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private getFileForImageCapture(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string v0, ".jpg"

    invoke-static {p1}, Lorg/chromium/ui/UiUtils;->getDirectoryForImageCapture(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-static {p0, v0, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private getGalleryPicker()Landroid/content/Intent;
    .locals 3

    iget-boolean v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mAllowMultiple:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.MULTIPLE_PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v1, "com.sec.android.gallery3d"

    const-string v2, "com.samsung.android.gallery.app.activity.external.GalleryExternalActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.LOCAL_ONLY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowImageTypes()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowVideoTypes()Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "image/*"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowVideoTypes()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "video/*"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    const-string p0, "*/*"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    :goto_1
    return-object v0
.end method

.method private getImageCaptureIntent()Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "output"

    iget-object v2, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCameraOutputUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {}, Lorg/chromium/base/StrictModeContext;->allowDiskReads()Lorg/chromium/base/StrictModeContext;

    move-result-object v1

    :try_start_0
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "images"

    iget-object p0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCameraOutputUri:Landroid/net/Uri;

    invoke-static {v2, v3, p0}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/chromium/base/StrictModeContext;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Lorg/chromium/base/StrictModeContext;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p0
.end method

.method private getMediaType(Landroid/net/Uri;ZLandroid/content/ContentResolver;)I
    .locals 8

    const/16 p0, 0xd

    const/4 v0, 0x6

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    move p0, v0

    :cond_0
    return p0

    :cond_1
    const-string v1, "mime_type"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v2, p3

    move-object v3, p1

    move-object v4, v1

    :try_start_0
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_8

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_7

    aget-object v1, v1, v3

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_7

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v4, "image/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p2, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    const/4 v1, 0x7

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_3

    :cond_3
    const-string v4, "video/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p2, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/16 v1, 0x8

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_3

    :cond_5
    if-eqz p2, :cond_6

    const/4 v1, 0x2

    goto :goto_2

    :cond_6
    const/16 v1, 0x9

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    :goto_3
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_8
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_10

    const-string p3, "."

    invoke-virtual {p1, p3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p3

    if-le p3, v2, :cond_10

    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lorg/chromium/ui/base/SelectFileDialog;->POPULAR_IMAGE_EXTENSIONS:[Ljava/lang/String;

    array-length p3, p1

    move v0, v3

    :goto_4
    if-ge v0, p3, :cond_b

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz p2, :cond_9

    const/4 p0, 0x3

    goto :goto_5

    :cond_9
    const/16 p0, 0xa

    :goto_5
    return p0

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_b
    sget-object p1, Lorg/chromium/ui/base/SelectFileDialog;->POPULAR_VIDEO_EXTENSIONS:[Ljava/lang/String;

    array-length p3, p1

    :goto_6
    if-ge v3, p3, :cond_e

    aget-object v0, p1, v3

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz p2, :cond_c

    const/4 p0, 0x4

    goto :goto_7

    :cond_c
    const/16 p0, 0xb

    :goto_7
    return p0

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_e
    if-eqz p2, :cond_f

    const/4 p0, 0x5

    goto :goto_8

    :cond_f
    const/16 p0, 0xc

    :goto_8
    return p0

    :cond_10
    if-eqz p2, :cond_11

    move p0, v0

    :cond_11
    return p0

    :catch_0
    move-exception p1

    const-string p3, "SelectFileDialog"

    const-string v1, "Failed to use ContentResolver"

    invoke-static {p3, v1, p1}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p2, :cond_12

    move p0, v0

    :cond_12
    return p0
.end method

.method private getMyFilesPicker()Landroid/content/Intent;
    .locals 3

    iget-boolean v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mAllowMultiple:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.myfiles.PICK_DATA_MULTIPLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.myfiles.PICK_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowImageTypes()Z

    move-result v1

    const-string v2, "SELECTOR_CATEGORY_TYPE"

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowVideoTypes()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowAudioTypes()Z

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, 0x2

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowVideoTypes()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x3

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowAudioTypes()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x4

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_3
    :goto_1
    return-object v0
.end method

.method private getSoundRecorderIntent()Landroid/content/Intent;
    .locals 2

    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v1}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    iget-boolean p0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mSupportsAudioCapture:Z

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getUploadMethod(I)I
    .locals 1
    .param p0    # I
        .annotation build Lorg/chromium/ui/base/SelectFileDialog$FileSelectedAction;
        .end annotation
    .end param

    const/4 v0, 0x3

    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    const/4 p0, 0x7

    return p0

    :pswitch_1
    const/4 p0, 0x6

    return p0

    :pswitch_2
    const/4 p0, 0x5

    return p0

    :pswitch_3
    const/4 p0, 0x4

    return p0

    :pswitch_4
    return v0

    :pswitch_5
    const/4 p0, 0x2

    return p0

    :pswitch_6
    const/4 p0, 0x1

    return p0

    :pswitch_7
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getVideoCaptureIntent()Landroid/content/Intent;
    .locals 2

    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    const-string v1, "android.permission.CAMERA"

    invoke-virtual {v0, v1}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    iget-boolean p0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mSupportsVideoCapture:Z

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static bridge synthetic h(Lorg/chromium/ui/base/SelectFileDialog;)Landroid/content/Intent;
    .locals 0

    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->getImageCaptureIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i(Lorg/chromium/ui/base/SelectFileDialog;Landroid/net/Uri;ZLandroid/content/ContentResolver;)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/ui/base/SelectFileDialog;->getMediaType(Landroid/net/Uri;ZLandroid/content/ContentResolver;)I

    move-result p0

    return p0
.end method

.method public static isContentUriUnderAppDir(Landroid/net/Uri;Landroid/content/Context;)Z
    .locals 4

    const-string v0, "/proc/self/fd/"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "r"

    invoke-virtual {v2, p0, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/String;

    invoke-static {p0, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/Files;->readSymbolicLink(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/chromium/ui/base/SelectFileDialog;->isPathUnderAppDir(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v1
.end method

.method private static isMimeType(Ljava/lang/String;)Z
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v2, 0x1

    sub-int/2addr p0, v2

    if-ge v0, p0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method private static isPathUnderAppDir(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSupportedPhotoPickerTypes(Ljava/util/List;)Z
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "image/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lorg/chromium/ui/base/SelectFileDialog;->photoPickerSupportsVideo()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "video/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_2
    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static bridge synthetic j(Lorg/chromium/ui/base/SelectFileDialog;)Landroid/content/Intent;
    .locals 0

    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->getVideoCaptureIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic k(Lorg/chromium/ui/base/SelectFileDialog;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/ui/base/SelectFileDialog;->launchSelectFileWithCameraIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic l(Lorg/chromium/ui/base/SelectFileDialog;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->onFileNotSelected()V

    return-void
.end method

.method private synthetic lambda$selectFile$2(Z[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[I)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p5

    if-ge v0, v1, :cond_8

    aget v1, p5, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_7

    iget-boolean v1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCapture:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->onFileNotSelected()V

    return-void

    :cond_0
    if-eqz p1, :cond_3

    array-length v1, p4

    array-length v2, p2

    if-ne v1, v2, :cond_2

    aget-object v1, p4, v0

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    aget-object p1, p4, v0

    aget-object p2, p2, v0

    const-string p3, "Permissions arrays don\'t match: "

    const-string p4, " != "

    invoke-static {p3, p1, p4, p2}, Lw2/j;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    array-length p1, p4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    array-length p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Permissions arrays misaligned: %d != %d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    const-string v1, "android.permission.READ_MEDIA_VIDEO"

    const-string v2, "android.permission.READ_MEDIA_IMAGES"

    if-eqz p1, :cond_5

    aget-object v3, p4, v0

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    aget-object v3, p4, v0

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    aget-object v3, p4, v0

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    sget p1, Lorg/chromium/ui/R$string;->permission_denied_error:I

    invoke-static {p1}, Lorg/chromium/ui/base/WindowAndroid;->showError(I)V

    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->onFileNotSelected()V

    return-void

    :cond_5
    sget-boolean v3, Lorg/chromium/build/SamsungBuildConfig;->SAMSUNG_FILE_CHOOSER:Z

    if-eqz v3, :cond_7

    aget-object v3, p4, v0

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    aget-object v3, p4, v0

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    aget-object v2, p4, v0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->onFileNotSelected()V

    return-void

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->launchSelectFileIntent()V

    return-void
.end method

.method private launchSelectFileIntent()V
    .locals 3

    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    const-string v1, "android.permission.CAMERA"

    invoke-virtual {v0, v1}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    iget-boolean v1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mSupportsImageCapture:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/chromium/ui/base/SelectFileDialog$GetCameraIntentTask;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v2, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-direct {v0, p0, v1, v2, p0}, Lorg/chromium/ui/base/SelectFileDialog$GetCameraIntentTask;-><init>(Lorg/chromium/ui/base/SelectFileDialog;Ljava/lang/Boolean;Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;)V

    sget-object p0, Lorg/chromium/base/task/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p0}, Lorg/chromium/base/task/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;)Lorg/chromium/base/task/AsyncTask;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/ui/base/SelectFileDialog;->launchSelectFileWithCameraIntent(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private launchSelectFileWithCameraIntent(Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p0}, Lorg/chromium/ui/base/SelectFileDialog;->determineSelectFileDialogScope()I

    move-result v0

    const/4 v1, 0x4

    const-string v2, "Android.SelectFileDialogScope"

    invoke-static {v2, v0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->getVideoCaptureIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->getSoundRecorderIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->captureImage()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    sget v3, Lorg/chromium/ui/R$string;->low_memory_error:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, p0, v3}, Lorg/chromium/ui/base/WindowAndroid;->showIntent(Landroid/content/Intent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->captureVideo()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    sget v3, Lorg/chromium/ui/R$string;->low_memory_error:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, p0, v3}, Lorg/chromium/ui/base/WindowAndroid;->showIntent(Landroid/content/Intent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_1
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->captureAudio()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    iget-object v2, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    sget v3, Lorg/chromium/ui/R$string;->low_memory_error:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, p0, v3}, Lorg/chromium/ui/base/WindowAndroid;->showIntent(Landroid/content/Intent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->shouldUsePhotoPicker()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    iget-boolean v3, p0, Lorg/chromium/ui/base/SelectFileDialog;->mAllowMultiple:Z

    iget-object v4, p0, Lorg/chromium/ui/base/SelectFileDialog;->mMimeTypes:Ljava/util/List;

    invoke-static {v2, p0, p0, v3, v4}, Lorg/chromium/ui/base/SelectFileDialog;->showPhotoPicker(Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Lorg/chromium/ui/base/PhotoPickerListener;ZLjava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mMediaPickerWasUsed:Z

    return-void

    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/chromium/ui/base/SelectFileDialog;->mMediaPickerWasUsed:Z

    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->shouldUsePhotoPicker()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x2

    invoke-static {v2}, Lorg/chromium/ui/base/SelectFileDialog;->logMediaPickerShown(I)V

    :cond_4
    invoke-direct {p0, p1, v0, v1}, Lorg/chromium/ui/base/SelectFileDialog;->showExternalPicker(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;)V

    return-void
.end method

.method private static logFileSelectedAction(I)V
    .locals 2
    .param p0    # I
        .annotation build Lorg/chromium/ui/base/SelectFileDialog$FileSelectedAction;
        .end annotation
    .end param

    const-string v0, "Android.SelectFileDialogContentSelected"

    const/16 v1, 0xe

    invoke-static {v0, p0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    invoke-static {p0}, Lorg/chromium/ui/base/SelectFileDialog;->getUploadMethod(I)I

    move-result p0

    const/16 v0, 0x8

    const-string v1, "Android.SelectFileDialogUploadMethods"

    invoke-static {v1, p0, v0}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    return-void
.end method

.method private static logMediaPickerShown(I)V
    .locals 2

    const-string v0, "Android.MediaPickerShown"

    const/4 v1, 0x4

    invoke-static {v0, p0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p0}, Lorg/chromium/ui/base/SelectFileDialog;->isPathUnderAppDir(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic n(I)V
    .locals 0

    invoke-static {p0}, Lorg/chromium/ui/base/SelectFileDialog;->logFileSelectedAction(I)V

    return-void
.end method

.method private nativeDestroyed()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mNativeSelectFileDialog:J

    return-void
.end method

.method private onFileNotSelected()V
    .locals 2

    iget-wide v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mNativeSelectFileDialog:J

    invoke-virtual {p0, v0, v1}, Lorg/chromium/ui/base/SelectFileDialog;->onFileNotSelected(J)V

    return-void
.end method

.method private static photoPickerSupportsVideo()Z
    .locals 1

    invoke-static {}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowPhotoPicker()Z

    move-result v0

    return v0
.end method

.method private static preferAndroidMediaPicker()Z
    .locals 1

    invoke-static {}, Lorg/chromium/ui/base/SelectFileDialog;->preferAndroidMediaPickerViaGetContent()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lorg/chromium/ui/base/SelectFileDialog;->preferAndroidMediaPickerViaPickImage()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lorg/chromium/ui/base/SelectFileDialog;->preferAndroidMediaPickerViaPickImagePlus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static preferAndroidMediaPickerViaGetContent()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    sget-object v0, Lorg/chromium/ui/base/SelectFileDialog;->sPhotoPickerDelegate:Lorg/chromium/ui/base/PhotoPickerDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/chromium/ui/base/PhotoPickerDelegate;->launchViaActionGetContent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static preferAndroidMediaPickerViaPickImage()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    sget-object v0, Lorg/chromium/ui/base/SelectFileDialog;->sPhotoPickerDelegate:Lorg/chromium/ui/base/PhotoPickerDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/chromium/ui/base/PhotoPickerDelegate;->launchViaActionPickImages()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static preferAndroidMediaPickerViaPickImagePlus()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    sget-object v0, Lorg/chromium/ui/base/SelectFileDialog;->sPhotoPickerDelegate:Lorg/chromium/ui/base/PhotoPickerDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/chromium/ui/base/PhotoPickerDelegate;->launchViaActionPickImagesPlus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private recordImageCountHistograms([Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mMimeTypes:Ljava/util/List;

    invoke-static {v0}, Lorg/chromium/ui/base/SelectFileDialog;->isSupportedPhotoPickerTypes(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Android.SelectFileDialogImgCount"

    array-length v1, p1

    invoke-static {v0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordCount100Histogram(Ljava/lang/String;I)V

    :cond_0
    sget-boolean v0, Lorg/chromium/build/SamsungBuildConfig;->SAMSUNG_FILE_CHOOSER:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lorg/chromium/ui/base/SelectFileDialog$RecordUploadMetricsTask;

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-boolean v2, p0, Lorg/chromium/ui/base/SelectFileDialog;->mMediaPickerWasUsed:Z

    invoke-direct {v0, p0, v1, p1, v2}, Lorg/chromium/ui/base/SelectFileDialog$RecordUploadMetricsTask;-><init>(Lorg/chromium/ui/base/SelectFileDialog;Landroid/content/ContentResolver;[Ljava/lang/String;Z)V

    sget-object p0, Lorg/chromium/base/task/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p0}, Lorg/chromium/base/task/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;)Lorg/chromium/base/task/AsyncTask;

    return-void
.end method

.method private static resolvePackageNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/chromium/base/PackageManagerUtils;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private static shouldShowPhotoPicker()Z
    .locals 1

    sget-object v0, Lorg/chromium/ui/base/SelectFileDialog;->sPhotoPickerDelegate:Lorg/chromium/ui/base/PhotoPickerDelegate;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldUsePhotoPicker()Z
    .locals 4

    const-string v0, "DisablePhotoPickerForVideoCapture"

    invoke-static {v0}, Lorg/chromium/ui/base/UiAndroidFeatureMap;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->captureVideo()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->captureImage()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mMimeTypes:Ljava/util/List;

    invoke-static {v0}, Lorg/chromium/ui/base/SelectFileDialog;->isSupportedPhotoPickerTypes(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowPhotoPicker()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method

.method private static showAndroidMediaPickerDirect(Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;ZLjava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/ui/base/WindowAndroid;",
            "Lorg/chromium/ui/base/WindowAndroid$IntentCallback;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    invoke-static {}, Lorg/chromium/components/autofill/a;->a()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x32

    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.provider.action.PICK_IMAGES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    const-string p2, "android.provider.extra.PICK_IMAGES_MAX"

    invoke-virtual {v1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    const-string p2, "forceShowBrowse"

    const/4 v0, 0x1

    invoke-virtual {v1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lorg/chromium/ui/base/SelectFileDialog;->preferAndroidMediaPickerViaPickImage()Z

    move-result p2

    const/4 v2, 0x0

    if-nez p2, :cond_2

    const-string p2, "*/*"

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    new-array p2, v2, [Ljava/lang/String;

    invoke-interface {p3, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    const-string p3, "android.intent.extra.MIME_TYPES"

    invoke-virtual {v1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    invoke-static {p3}, Lorg/chromium/ui/base/SelectFileDialog;->singleMimeTypeForAndroidPicker(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_3

    return v2

    :cond_3
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    sget p2, Lorg/chromium/ui/R$string;->opening_android_media_picker:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, v1, p1, p2}, Lorg/chromium/ui/base/WindowAndroid;->showIntent(Landroid/content/Intent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    invoke-static {v0}, Lorg/chromium/ui/base/SelectFileDialog;->logMediaPickerShown(I)V

    return v0
.end method

.method private static showAndroidMediaPickerIndirect(Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;ZLjava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/ui/base/WindowAndroid;",
            "Lorg/chromium/ui/base/WindowAndroid$IntentCallback;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    const-string v2, "android.intent.extra.ALLOW_MULTIPLE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    const-string v2, "*/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-interface {p3, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    const-string v4, "android.intent.extra.MIME_TYPES"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0}, Lorg/chromium/ui/base/SelectFileDialog;->resolvePackageNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.google.android.providers.media.module"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "com.google.android.photopicker"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p0, p1, p2, p3}, Lorg/chromium/ui/base/SelectFileDialog;->showAndroidMediaPickerDirect(Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;ZLjava/util/List;)Z

    move-result p0

    return p0

    :cond_1
    sget p2, Lorg/chromium/ui/R$string;->opening_android_media_picker:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lorg/chromium/ui/base/WindowAndroid;->showIntent(Landroid/content/Intent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    const/4 p0, 0x3

    invoke-static {p0}, Lorg/chromium/ui/base/SelectFileDialog;->logMediaPickerShown(I)V

    return v1
.end method

.method private static showChromeMediaPicker(Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/ui/base/PhotoPickerListener;ZLjava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/ui/base/WindowAndroid;",
            "Lorg/chromium/ui/base/PhotoPickerListener;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    sget-object v0, Lorg/chromium/ui/base/SelectFileDialog;->sPhotoPickerDelegate:Lorg/chromium/ui/base/PhotoPickerDelegate;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {v0, p0, p1, p2, p3}, Lorg/chromium/ui/base/PhotoPickerDelegate;->showPhotoPicker(Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/ui/base/PhotoPickerListener;ZLjava/util/List;)Lorg/chromium/ui/base/PhotoPicker;

    move-result-object p0

    sput-object p0, Lorg/chromium/ui/base/SelectFileDialog;->sPhotoPicker:Lorg/chromium/ui/base/PhotoPicker;

    invoke-static {v1}, Lorg/chromium/ui/base/SelectFileDialog;->logMediaPickerShown(I)V

    const/4 p0, 0x1

    return p0
.end method

.method private showExternalPicker(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "DeprecatedExternalPickerFunction"

    invoke-static {v0}, Lorg/chromium/ui/base/UiAndroidFeatureMap;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/ui/base/SelectFileDialog;->showExternalPickerDeprecated(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;)V

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mIntentAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mAllowMultiple:Z

    if-eqz v1, :cond_1

    const-string v1, "android.intent.extra.ALLOW_MULTIPLE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mMimeTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_4

    iget-object v1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mMimeTypes:Ljava/util/List;

    const-string v3, "application/octet-stream"

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/chromium/ui/base/SelectFileDialog;->mMimeTypes:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowImageTypes()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowVideoTypes()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const-string v3, "type/nonexistent"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    new-array v3, v2, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const-string v3, "android.intent.extra.MIME_TYPES"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowImageTypes()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {p0}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowVideoTypes()Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {p0}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowAudioTypes()Z

    move-result p1

    if-eqz p1, :cond_7

    if-eqz p3, :cond_7

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    const-string p1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.CHOOSER"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_8

    new-array p2, v2, [Landroid/content/Intent;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/os/Parcelable;

    const-string p3, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_8
    const-string p2, "android.intent.extra.INTENT"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object p2, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    sget p3, Lorg/chromium/ui/R$string;->low_memory_error:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p1, p0, p3}, Lorg/chromium/ui/base/WindowAndroid;->showIntent(Landroid/content/Intent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)Z

    move-result p1

    if-nez p1, :cond_9

    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->onFileNotSelected()V

    :cond_9
    return-void
.end method

.method private showExternalPickerDeprecated(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 7

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mIntentAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mAllowMultiple:Z

    if-eqz v1, :cond_0

    const-string v1, "android.intent.extra.ALLOW_MULTIPLE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/ui/base/SelectFileDialog;->acceptsSingleType()Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "android.intent.extra.MIME_TYPES"

    if-eqz v2, :cond_7

    new-instance v2, Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/chromium/ui/base/SelectFileDialog;->mFileTypes:Ljava/util/List;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowImageTypes()Z

    move-result v5

    const-string v6, "type/nonexistent"

    if-eqz v5, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v5, v3, [Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowVideoTypes()Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz p2, :cond_3

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v5, v3, [Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowAudioTypes()Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz p3, :cond_5

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    new-array v5, v3, [Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_6
    :goto_0
    const-string v2, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_7
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_b

    :cond_8
    if-eqz p1, :cond_9

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-virtual {p0}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowImageTypes()Z

    move-result p1

    if-nez p1, :cond_b

    if-eqz p2, :cond_a

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    if-eqz p3, :cond_b

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    sget-boolean p1, Lorg/chromium/build/SamsungBuildConfig;->SAMSUNG_FILE_CHOOSER:Z

    if-eqz p1, :cond_c

    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->getMyFilesPicker()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "audio/*"

    invoke-direct {p0, p1}, Lorg/chromium/ui/base/SelectFileDialog;->acceptsOnlyType(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_c

    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->getGalleryPicker()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.CHOOSER"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_d

    new-array p2, v3, [Landroid/content/Intent;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/os/Parcelable;

    const-string p3, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_d
    const-string p2, "android.intent.extra.INTENT"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object p2, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    sget p3, Lorg/chromium/ui/R$string;->low_memory_error:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p1, p0, p3}, Lorg/chromium/ui/base/WindowAndroid;->showIntent(Landroid/content/Intent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)Z

    move-result p1

    if-nez p1, :cond_e

    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->onFileNotSelected()V

    :cond_e
    return-void
.end method

.method private static showPhotoPicker(Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Lorg/chromium/ui/base/PhotoPickerListener;ZLjava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/ui/base/WindowAndroid;",
            "Lorg/chromium/ui/base/WindowAndroid$IntentCallback;",
            "Lorg/chromium/ui/base/PhotoPickerListener;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lorg/chromium/ui/base/SelectFileDialog;->preferAndroidMediaPickerViaGetContent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p3, p4}, Lorg/chromium/ui/base/SelectFileDialog;->showAndroidMediaPickerIndirect(Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;ZLjava/util/List;)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Lorg/chromium/ui/base/SelectFileDialog;->preferAndroidMediaPickerViaPickImage()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lorg/chromium/ui/base/SelectFileDialog;->preferAndroidMediaPickerViaPickImagePlus()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0, p2, p3, p4}, Lorg/chromium/ui/base/SelectFileDialog;->showChromeMediaPicker(Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/ui/base/PhotoPickerListener;ZLjava/util/List;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    invoke-static {p0, p1, p3, p4}, Lorg/chromium/ui/base/SelectFileDialog;->showAndroidMediaPickerDirect(Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;ZLjava/util/List;)Z

    move-result p0

    return p0
.end method

.method private static singleMimeTypeForAndroidPicker(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v0, v1

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "image"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const-string v4, "video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v2

    :cond_3
    :goto_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    :cond_4
    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    const-string p0, "*/*"

    return-object p0

    :cond_5
    if-eqz v0, :cond_6

    const-string p0, "video/*"

    return-object p0

    :cond_6
    if-eqz v1, :cond_7

    const-string p0, "image/*"

    return-object p0

    :cond_7
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public acceptsSingleType()Z
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mMimeTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mMimeTypes:Ljava/util/List;

    const-string v0, "*/*"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_0
    iget-object p0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mMimeTypes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v2, 0x0

    move v3, v0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    return v0

    :cond_2
    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v2, :cond_3

    move-object v2, v6

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    return v0

    :cond_4
    :goto_1
    if-eqz v4, :cond_1

    move v3, v1

    goto :goto_0

    :cond_5
    return v3
.end method

.method public determineSelectFileDialogScope()I
    .locals 10
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mMimeTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "image"

    invoke-direct {p0, v0}, Lorg/chromium/ui/base/SelectFileDialog;->countAcceptTypesFor(Ljava/lang/String;)I

    move-result v0

    const-string v2, "video"

    invoke-direct {p0, v2}, Lorg/chromium/ui/base/SelectFileDialog;->countAcceptTypesFor(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lorg/chromium/ui/base/SelectFileDialog;->mMimeTypes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int v4, v0, v2

    const/4 v5, 0x1

    if-le v3, v4, :cond_6

    iget-object v3, p0, Lorg/chromium/ui/base/SelectFileDialog;->mFileTypes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v6, Lorg/chromium/ui/base/SelectFileDialog;->POPULAR_IMAGE_EXTENSIONS:[Ljava/lang/String;

    array-length v7, v6

    move v8, v1

    :goto_1
    if-ge v8, v7, :cond_3

    aget-object v9, v6, v8

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    add-int/lit8 v0, v0, 0x1

    move v6, v5

    goto :goto_2

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    move v6, v1

    :goto_2
    if-eqz v6, :cond_4

    goto :goto_0

    :cond_4
    sget-object v6, Lorg/chromium/ui/base/SelectFileDialog;->POPULAR_VIDEO_EXTENSIONS:[Ljava/lang/String;

    array-length v7, v6

    move v8, v1

    :goto_3
    if-ge v8, v7, :cond_1

    aget-object v9, v6, v8

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_6
    iget-object p0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mFileTypes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v0

    sub-int/2addr p0, v2

    if-lez p0, :cond_7

    return v1

    :cond_7
    if-lez v2, :cond_9

    if-nez v0, :cond_8

    const/4 p0, 0x2

    goto :goto_4

    :cond_8
    const/4 p0, 0x3

    :goto_4
    return p0

    :cond_9
    return v5
.end method

.method public doesCallerHavePermissionForUri(Landroid/net/Uri;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    const/4 v2, 0x1

    if-lt v0, v1, :cond_3

    const-string v0, "CheckIntentCallerPermission"

    invoke-static {v0}, Lorg/chromium/ui/base/UiAndroidFeatureMap;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    const/4 v0, 0x0

    if-nez p0, :cond_1

    return v0

    :cond_1
    :try_start_0
    invoke-static {p0}, LA2/e;->d(Landroid/app/Activity;)Landroid/app/ComponentCaller;

    move-result-object p0

    invoke-static {p0, p1}, LA2/e;->b(Landroid/app/ComponentCaller;Landroid/net/Uri;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_0
    return v2

    :catch_0
    move-exception p0

    const-string p1, "SelectFileDialog"

    const-string v1, "Failed to check caller\'s permission."

    invoke-static {p1, v1, p0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    :cond_3
    :goto_1
    return v2
.end method

.method public onFileNotSelected(J)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/chromium/ui/base/SelectFileDialog;->recordImageCountHistograms([Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/ui/base/SelectFileDialogJni;->get()Lorg/chromium/ui/base/SelectFileDialog$Natives;

    move-result-object v0

    invoke-interface {v0, p1, p2, p0}, Lorg/chromium/ui/base/SelectFileDialog$Natives;->onFileNotSelected(JLorg/chromium/ui/base/SelectFileDialog;)V

    :cond_0
    return-void
.end method

.method public onFileSelected(JLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/ui/base/SelectFileDialog;->recordImageCountHistograms([Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/ui/base/SelectFileDialogJni;->get()Lorg/chromium/ui/base/SelectFileDialog$Natives;

    move-result-object v1

    move-wide v2, p1

    move-object v4, p0

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lorg/chromium/ui/base/SelectFileDialog$Natives;->onFileSelected(JLorg/chromium/ui/base/SelectFileDialog;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onIntentCompleted(ILandroid/content/Intent;)V
    .locals 7

    const-string v0, "SelectFileDialog"

    sget-object v1, Lorg/chromium/ui/base/SelectFileDialog;->sPhotoPicker:Lorg/chromium/ui/base/PhotoPicker;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/chromium/ui/base/PhotoPicker;->onExternalIntentCompleted()V

    :cond_0
    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->onFileNotSelected()V

    return-void

    :cond_1
    const-string p1, "file"

    if-eqz p2, :cond_12

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    if-nez v1, :cond_2

    goto/16 :goto_6

    :cond_2
    sget-boolean v1, Lorg/chromium/build/SamsungBuildConfig;->SAMSUNG_FILE_CHOOSER:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    if-nez v1, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string p1, "selectedItems"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "FILE_URI"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-nez p1, :cond_3

    if-nez p2, :cond_3

    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->onFileNotSelected()V

    return-void

    :cond_3
    invoke-static {p2}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_4
    array-length v0, p2

    :goto_0
    new-array v1, v0, [Landroid/net/Uri;

    move v4, v2

    :goto_1
    if-ge v4, v0, :cond_6

    if-eqz p1, :cond_5

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    goto :goto_2

    :cond_5
    aget-object v5, p2, v4

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    :goto_2
    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    new-instance p1, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    if-le v0, v3, :cond_7

    move v2, v3

    :cond_7
    invoke-direct {p1, p0, p2, v2, v1}, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;-><init>(Lorg/chromium/ui/base/SelectFileDialog;Landroid/content/Context;Z[Landroid/net/Uri;)V

    sget-object p0, Lorg/chromium/base/task/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p0}, Lorg/chromium/base/task/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;)Lorg/chromium/base/task/AsyncTask;

    return-void

    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const-string v4, "content"

    if-nez v1, :cond_c

    invoke-virtual {p2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipData;

    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result p2

    if-nez p2, :cond_9

    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->onFileNotSelected()V

    return-void

    :cond_9
    new-array v0, p2, [Landroid/net/Uri;

    :goto_3
    if-ge v2, p2, :cond_b

    invoke-virtual {p1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    aget-object v1, v0, v2

    invoke-virtual {p0, v1}, Lorg/chromium/ui/base/SelectFileDialog;->doesCallerHavePermissionForUri(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->onFileNotSelected()V

    return-void

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_b
    new-instance p1, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p0, p2, v3, v0}, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;-><init>(Lorg/chromium/ui/base/SelectFileDialog;Landroid/content/Context;Z[Landroid/net/Uri;)V

    sget-object p0, Lorg/chromium/base/task/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p0}, Lorg/chromium/base/task/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;)Lorg/chromium/base/task/AsyncTask;

    return-void

    :cond_c
    sget-boolean v5, Lorg/chromium/build/SamsungBuildConfig;->SAMSUNG_FILE_CHOOSER:Z

    if-eqz v5, :cond_d

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1d

    if-gt v5, v6, :cond_d

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    filled-new-array {p1}, [Landroid/net/Uri;

    move-result-object p1

    new-instance p2, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p0, v0, v2, p1}, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;-><init>(Lorg/chromium/ui/base/SelectFileDialog;Landroid/content/Context;Z[Landroid/net/Uri;)V

    sget-object p0, Lorg/chromium/base/task/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, p0}, Lorg/chromium/base/task/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;)Lorg/chromium/base/task/AsyncTask;

    return-void

    :cond_d
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    new-instance p2, Lorg/chromium/ui/base/SelectFileDialog$FilePathSelectedTask;

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-direct {p2, p0, v0, p1, v1}, Lorg/chromium/ui/base/SelectFileDialog$FilePathSelectedTask;-><init>(Lorg/chromium/ui/base/SelectFileDialog;Landroid/content/Context;Ljava/lang/String;Lorg/chromium/ui/base/WindowAndroid;)V

    sget-object p0, Lorg/chromium/base/task/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, p0}, Lorg/chromium/base/task/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;)Lorg/chromium/base/task/AsyncTask;

    return-void

    :cond_e
    invoke-virtual {p2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {p0, v1}, Lorg/chromium/ui/base/SelectFileDialog;->doesCallerHavePermissionForUri(Landroid/net/Uri;)Z

    move-result p1

    if-nez p1, :cond_f

    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->onFileNotSelected()V

    return-void

    :cond_f
    const-string p1, "SelectFileOpenDocument"

    invoke-static {p1}, Lorg/chromium/ui/base/UiAndroidFeatureMap;->isEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1, v1, v3}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v3, "No persisted read permission for "

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    const/4 p2, 0x2

    :try_start_1
    invoke-virtual {p1, v1, p2}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "No persisted write permission for "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    :goto_5
    new-instance p1, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    filled-new-array {v1}, [Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p1, p0, p2, v2, v0}, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;-><init>(Lorg/chromium/ui/base/SelectFileDialog;Landroid/content/Context;Z[Landroid/net/Uri;)V

    sget-object p0, Lorg/chromium/base/task/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p0}, Lorg/chromium/base/task/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;)Lorg/chromium/base/task/AsyncTask;

    return-void

    :cond_11
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->onFileNotSelected()V

    sget p0, Lorg/chromium/ui/R$string;->opening_file_error:I

    invoke-static {p0}, Lorg/chromium/ui/base/WindowAndroid;->showError(I)V

    return-void

    :cond_12
    :goto_6
    sget-boolean v0, Lorg/chromium/build/SamsungBuildConfig;->SAMSUNG_FILE_CHOOSER:Z

    if-eqz v0, :cond_13

    if-eqz p2, :cond_13

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_13

    return-void

    :cond_13
    iget-object p2, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCameraOutputUri:Landroid/net/Uri;

    invoke-static {p2}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCameraOutputUri:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCameraOutputUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    :cond_14
    iget-object p1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCameraOutputUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_7
    iget-object p2, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCameraOutputUri:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/chromium/ui/base/SelectFileDialog;->isPathUnderAppDir(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_15

    iget-wide v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mNativeSelectFileDialog:J

    iget-object p2, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCameraOutputUri:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/chromium/ui/base/SelectFileDialog;->onFileSelected(JLjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object p0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCameraOutputUri:Landroid/net/Uri;

    invoke-direct {p2, v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, p2}, Lorg/chromium/ui/base/WindowAndroid;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_8

    :cond_15
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->onFileNotSelected()V

    :goto_8
    return-void
.end method

.method public onMultipleFilesSelected(J[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0, p3}, Lorg/chromium/ui/base/SelectFileDialog;->recordImageCountHistograms([Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/ui/base/SelectFileDialogJni;->get()Lorg/chromium/ui/base/SelectFileDialog$Natives;

    move-result-object v1

    move-wide v2, p1

    move-object v4, p0

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lorg/chromium/ui/base/SelectFileDialog$Natives;->onMultipleFilesSelected(JLorg/chromium/ui/base/SelectFileDialog;[Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public selectFile(Ljava/lang/String;[Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 2
    .annotation build Lorg/chromium/build/annotations/Initializer;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v0, "SelectFileOpenDocument"

    invoke-static {v0}, Lorg/chromium/ui/base/UiAndroidFeatureMap;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.action.GET_CONTENT"

    :goto_0
    iput-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mIntentAction:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mFileTypes:Ljava/util/List;

    invoke-static {v0}, Lorg/chromium/ui/base/SelectFileDialog;->convertToSupportedMimeTypes(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lorg/chromium/ui/base/SelectFileDialog;->mMimeTypes:Ljava/util/List;

    iput-boolean p3, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCapture:Z

    iput-boolean p4, p0, Lorg/chromium/ui/base/SelectFileDialog;->mAllowMultiple:Z

    sget-object p2, Lorg/chromium/ui/base/SelectFileDialog;->sWindowAndroidForTesting:Lorg/chromium/ui/base/WindowAndroid;

    if-nez p2, :cond_1

    move-object p2, p7

    :cond_1
    iput-object p2, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    iget-object p2, p0, Lorg/chromium/ui/base/SelectFileDialog;->mIntentAction:Ljava/lang/String;

    const-string p3, "android.intent.action.OPEN_DOCUMENT"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string p4, "android.intent.action.CREATE_DOCUMENT"

    if-nez p2, :cond_e

    const-string p2, "android.intent.action.OPEN_DOCUMENT_TREE"

    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mIntentAction:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    iget-object p2, p0, Lorg/chromium/ui/base/SelectFileDialog;->mIntentAction:Ljava/lang/String;

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto/16 :goto_4

    :cond_2
    iget-object p1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/chromium/ui/base/WindowAndroid;->canResolveActivity(Landroid/content/Intent;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mSupportsImageCapture:Z

    iget-object p1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/chromium/ui/base/WindowAndroid;->canResolveActivity(Landroid/content/Intent;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mSupportsVideoCapture:Z

    iget-object p1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/chromium/ui/base/WindowAndroid;->canResolveActivity(Landroid/content/Intent;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mSupportsAudioCapture:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->shouldUsePhotoPicker()Z

    move-result p2

    sget-boolean p3, Lorg/chromium/build/SamsungBuildConfig;->SAMSUNG_FILE_CHOOSER:Z

    const/16 p4, 0x21

    const-string p5, "android.permission.READ_MEDIA_VIDEO"

    const-string p6, "android.permission.READ_MEDIA_IMAGES"

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    if-eqz p3, :cond_5

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-ge p3, v1, :cond_5

    if-lt p3, p4, :cond_4

    invoke-virtual {p7, p6}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-virtual {p0}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowImageTypes()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p1, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p7, p5}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_5

    invoke-virtual {p0}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowVideoTypes()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {p7, v0}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_5

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    if-eqz p2, :cond_8

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p3, p4, :cond_7

    invoke-static {}, Lorg/chromium/ui/base/SelectFileDialog;->preferAndroidMediaPicker()Z

    move-result p3

    if-nez p3, :cond_c

    invoke-virtual {p7, p6}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_6

    invoke-virtual {p0}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowImageTypes()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-virtual {p1, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {p7, p5}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_c

    invoke-virtual {p0}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowVideoTypes()Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-virtual {p7, v0}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_c

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    iget-boolean p3, p0, Lorg/chromium/ui/base/SelectFileDialog;->mSupportsImageCapture:Z

    if-eqz p3, :cond_9

    invoke-virtual {p0}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowImageTypes()Z

    move-result p3

    if-nez p3, :cond_a

    :cond_9
    iget-boolean p3, p0, Lorg/chromium/ui/base/SelectFileDialog;->mSupportsVideoCapture:Z

    if-eqz p3, :cond_b

    invoke-virtual {p0}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowVideoTypes()Z

    move-result p3

    if-eqz p3, :cond_b

    :cond_a
    const-string p3, "android.permission.CAMERA"

    invoke-virtual {p7, p3}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_b

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    iget-boolean p3, p0, Lorg/chromium/ui/base/SelectFileDialog;->mSupportsAudioCapture:Z

    if-eqz p3, :cond_c

    invoke-virtual {p0}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowAudioTypes()Z

    move-result p3

    if-eqz p3, :cond_c

    const-string p3, "android.permission.RECORD_AUDIO"

    invoke-virtual {p7, p3}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_c

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_d

    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->launchSelectFileIntent()V

    goto :goto_3

    :cond_d
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    new-array p3, p3, [Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    new-instance p3, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/a;

    const/4 p4, 0x4

    invoke-direct {p3, p0, p2, p1, p4}, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/a;-><init>(Ljava/lang/Object;ZLjava/lang/Object;I)V

    invoke-virtual {p7, p1, p3}, Lorg/chromium/ui/base/WindowAndroid;->requestPermissions([Ljava/lang/String;Lorg/chromium/ui/permissions/PermissionCallback;)V

    :goto_3
    return-void

    :cond_e
    :goto_4
    new-instance p2, Landroid/content/Intent;

    iget-object p7, p0, Lorg/chromium/ui/base/SelectFileDialog;->mIntentAction:Ljava/lang/String;

    invoke-direct {p2, p7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p7, p0, Lorg/chromium/ui/base/SelectFileDialog;->mIntentAction:Ljava/lang/String;

    invoke-virtual {p3, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-string p7, "android.intent.category.OPENABLE"

    const-string v0, "*/*"

    const/4 v1, 0x0

    if-eqz p3, :cond_13

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mMimeTypes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    const/4 p4, 0x1

    if-eqz p3, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object p6

    invoke-virtual {p6, p3}, Landroid/webkit/MimeTypeMap;->hasMimeType(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_f

    move p1, v1

    goto :goto_5

    :cond_10
    move p1, p4

    :goto_5
    iget-object p3, p0, Lorg/chromium/ui/base/SelectFileDialog;->mMimeTypes:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_11

    if-eqz p1, :cond_11

    iget-object p1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mMimeTypes:Ljava/util/List;

    new-array p3, v1, [Ljava/lang/String;

    invoke-interface {p1, p3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const-string p3, "android.intent.extra.MIME_TYPES"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_11
    iget-boolean p1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mAllowMultiple:Z

    if-eqz p1, :cond_12

    const-string p1, "android.intent.extra.ALLOW_MULTIPLE"

    invoke-virtual {p2, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_12
    invoke-virtual {p2, p7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_6

    :cond_13
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    iget-object p1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mMimeTypes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_14

    iget-object p1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mMimeTypes:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    :cond_14
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_15

    const-string p1, "android.intent.extra.TITLE"

    invoke-virtual {p2, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_15
    invoke-virtual {p2, p7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_16
    :goto_6
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_17

    const-string p1, "android.provider.extra.INITIAL_URI"

    invoke-static {p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_17
    iget-object p1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    sget p3, Lorg/chromium/ui/R$string;->low_memory_error:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p0, p3}, Lorg/chromium/ui/base/WindowAndroid;->showIntent(Landroid/content/Intent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)Z

    move-result p1

    if-nez p1, :cond_18

    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->onFileNotSelected()V

    :cond_18
    return-void
.end method

.method public shouldShowAudioTypes()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "audio"

    invoke-direct {p0, v0}, Lorg/chromium/ui/base/SelectFileDialog;->acceptsType(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public shouldShowImageTypes()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "image"

    invoke-direct {p0, v0}, Lorg/chromium/ui/base/SelectFileDialog;->acceptsType(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public shouldShowVideoTypes()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "video"

    invoke-direct {p0, v0}, Lorg/chromium/ui/base/SelectFileDialog;->acceptsType(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
