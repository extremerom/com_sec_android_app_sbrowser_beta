.class Lorg/chromium/content/browser/NfcHost;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/WindowEventObserver;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final sContextHostsMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/chromium/content/browser/NfcHost;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallback:Lorg/chromium/base/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/Callback<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final mContextId:I

.field private final mWebContents:Lorg/chromium/content_public/browser/WebContents;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/chromium/content/browser/NfcHost;->sContextHostsMap:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/content/browser/NfcHost;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    iput p2, p0, Lorg/chromium/content/browser/NfcHost;->mContextId:I

    sget-object p1, Lorg/chromium/content/browser/NfcHost;->sContextHostsMap:Landroid/util/SparseArray;

    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private static create(Lorg/chromium/content_public/browser/WebContents;I)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/content/browser/NfcHost;

    invoke-direct {v0, p0, p1}, Lorg/chromium/content/browser/NfcHost;-><init>(Lorg/chromium/content_public/browser/WebContents;I)V

    return-void
.end method

.method public static fromContextId(I)Lorg/chromium/content/browser/NfcHost;
    .locals 1

    sget-object v0, Lorg/chromium/content/browser/NfcHost;->sContextHostsMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/content/browser/NfcHost;

    return-object p0
.end method


# virtual methods
.method public onWindowAndroidChanged(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lorg/chromium/content/browser/NfcHost;->mCallback:Lorg/chromium/base/Callback;

    invoke-interface {p0, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method public stopTrackingActivityChanges()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/NfcHost;->mCallback:Lorg/chromium/base/Callback;

    iget-object v0, p0, Lorg/chromium/content/browser/NfcHost;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {v0}, Lorg/chromium/content/browser/WindowEventObserverManager;->maybeFrom(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/WindowEventObserverManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lorg/chromium/content/browser/WindowEventObserverManager;->removeObserver(Lorg/chromium/content/browser/WindowEventObserver;)V

    :cond_0
    sget-object v0, Lorg/chromium/content/browser/NfcHost;->sContextHostsMap:Landroid/util/SparseArray;

    iget p0, p0, Lorg/chromium/content/browser/NfcHost;->mContextId:I

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public trackActivityChanges(Lorg/chromium/base/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/Callback<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/chromium/content/browser/NfcHost;->mCallback:Lorg/chromium/base/Callback;

    iget-object v0, p0, Lorg/chromium/content/browser/NfcHost;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {v0}, Lorg/chromium/content/browser/WindowEventObserverManager;->maybeFrom(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/WindowEventObserverManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lorg/chromium/content/browser/WindowEventObserverManager;->addObserver(Lorg/chromium/content/browser/WindowEventObserver;)V

    :cond_0
    iget-object p0, p0, Lorg/chromium/content/browser/NfcHost;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {p0}, Lorg/chromium/content_public/browser/WebContents;->getTopLevelNativeWindow()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-interface {p1, p0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method
