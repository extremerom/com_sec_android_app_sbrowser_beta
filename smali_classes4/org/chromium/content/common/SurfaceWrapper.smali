.class public Lorg/chromium/content/common/SurfaceWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/chromium/content/common/SurfaceWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBrowserInputToken:Landroid/window/InputTransferToken;

.field private final mCanBeUsedWithSurfaceControl:Z

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field private final mWrapsSurface:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/content/common/SurfaceWrapper$1;

    invoke-direct {v0}, Lorg/chromium/content/common/SurfaceWrapper$1;-><init>()V

    sput-object v0, Lorg/chromium/content/common/SurfaceWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/view/Surface;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/common/SurfaceWrapper;->mWrapsSurface:Z

    iput-object p1, p0, Lorg/chromium/content/common/SurfaceWrapper;->mSurface:Landroid/view/Surface;

    iput-boolean p2, p0, Lorg/chromium/content/common/SurfaceWrapper;->mCanBeUsedWithSurfaceControl:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/chromium/content/common/SurfaceWrapper;->mSurfaceControl:Landroid/view/SurfaceControl;

    iput-object p1, p0, Lorg/chromium/content/common/SurfaceWrapper;->mBrowserInputToken:Landroid/window/InputTransferToken;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/Surface;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/content/common/SurfaceWrapper;-><init>(Landroid/view/Surface;Z)V

    return-void
.end method

.method private constructor <init>(Landroid/view/Surface;ZLandroid/window/InputTransferToken;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/content/common/SurfaceWrapper;-><init>(Landroid/view/Surface;Z)V

    iput-object p3, p0, Lorg/chromium/content/common/SurfaceWrapper;->mBrowserInputToken:Landroid/window/InputTransferToken;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/Surface;ZLandroid/window/InputTransferToken;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/content/common/SurfaceWrapper;-><init>(Landroid/view/Surface;ZLandroid/window/InputTransferToken;)V

    return-void
.end method

.method private constructor <init>(Landroid/view/SurfaceControl;)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/common/SurfaceWrapper;->mWrapsSurface:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/common/SurfaceWrapper;->mSurface:Landroid/view/Surface;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/chromium/content/common/SurfaceWrapper;->mCanBeUsedWithSurfaceControl:Z

    iput-object p1, p0, Lorg/chromium/content/common/SurfaceWrapper;->mSurfaceControl:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lorg/chromium/content/common/SurfaceWrapper;->mBrowserInputToken:Landroid/window/InputTransferToken;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/SurfaceControl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/content/common/SurfaceWrapper;-><init>(Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public static bridge synthetic a(Landroid/os/Parcel;)Landroid/window/InputTransferToken;
    .locals 0

    invoke-static {p0}, Lorg/chromium/content/common/SurfaceWrapper;->createInputTokenFromParcel(Landroid/os/Parcel;)Landroid/window/InputTransferToken;

    move-result-object p0

    return-object p0
.end method

.method private canBeUsedWithSurfaceControl()Z
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-boolean p0, p0, Lorg/chromium/content/common/SurfaceWrapper;->mCanBeUsedWithSurfaceControl:Z

    return p0
.end method

.method private static create(Landroid/view/Surface;Z)Lorg/chromium/content/common/SurfaceWrapper;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/content/common/SurfaceWrapper;

    invoke-direct {v0, p0, p1}, Lorg/chromium/content/common/SurfaceWrapper;-><init>(Landroid/view/Surface;Z)V

    return-object v0
.end method

.method private static create(Landroid/view/Surface;ZLandroid/window/InputTransferToken;)Lorg/chromium/content/common/SurfaceWrapper;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/content/common/SurfaceWrapper;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/content/common/SurfaceWrapper;-><init>(Landroid/view/Surface;ZLandroid/window/InputTransferToken;)V

    return-object v0
.end method

.method private static createFromSurfaceControl(Landroid/view/SurfaceControl;)Lorg/chromium/content/common/SurfaceWrapper;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/content/common/SurfaceWrapper;

    invoke-direct {v0, p0}, Lorg/chromium/content/common/SurfaceWrapper;-><init>(Landroid/view/SurfaceControl;)V

    return-object v0
.end method

.method private static createInputTokenFromParcel(Landroid/os/Parcel;)Landroid/window/InputTransferToken;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-static {}, LA2/e;->i()Landroid/os/Parcelable$Creator;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LA2/e;->l(Ljava/lang/Object;)Landroid/window/InputTransferToken;

    move-result-object p0

    return-object p0
.end method

.method private getWrapsSurface()Z
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-boolean p0, p0, Lorg/chromium/content/common/SurfaceWrapper;->mWrapsSurface:Z

    return p0
.end method

.method private takeSurface()Landroid/view/Surface;
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/common/SurfaceWrapper;->mSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/content/common/SurfaceWrapper;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method private takeSurfaceControl()Landroid/view/SurfaceControl;
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/common/SurfaceWrapper;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/content/common/SurfaceWrapper;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method private writeInputTokenToParcel(Landroid/os/Parcel;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object p0, p0, Lorg/chromium/content/common/SurfaceWrapper;->mBrowserInputToken:Landroid/window/InputTransferToken;

    invoke-static {p0, p1}, LA2/e;->A(Landroid/window/InputTransferToken;Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getBrowserInputToken()Landroid/window/InputTransferToken;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/content/common/SurfaceWrapper;->mBrowserInputToken:Landroid/window/InputTransferToken;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-boolean p2, p0, Lorg/chromium/content/common/SurfaceWrapper;->mWrapsSurface:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lorg/chromium/content/common/SurfaceWrapper;->mWrapsSurface:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/chromium/content/common/SurfaceWrapper;->mSurface:Landroid/view/Surface;

    invoke-static {p2}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lorg/chromium/content/common/SurfaceWrapper;->mBrowserInputToken:Landroid/window/InputTransferToken;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lorg/chromium/content/common/SurfaceWrapper;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, p1, v0}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean v0, p0, Lorg/chromium/content/common/SurfaceWrapper;->mCanBeUsedWithSurfaceControl:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Lorg/chromium/content/common/SurfaceWrapper;->writeInputTokenToParcel(Landroid/os/Parcel;)V

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lorg/chromium/content/common/SurfaceWrapper;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {p2}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/chromium/content/common/SurfaceWrapper;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceControl;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_2
    :goto_1
    return-void
.end method
