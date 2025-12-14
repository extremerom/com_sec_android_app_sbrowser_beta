.class public Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;
.super Lcom/sec/sbrowser/spl/util/ReflectBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$ClipboardEventListener;,
        Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$Format;
    }
.end annotation


# instance fields
.field private mAddClip:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private mBaseClass:Ljava/lang/Class;

.field private mDismissDialog:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private mDismissUIDataDialog:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private mFilterClip:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private mGetCount:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

.field private mGetData:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

.field private mGetDataListSize:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

.field private mGetLatestClip:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

.field private mHasData:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

.field private mHasDataOf:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

.field private mIsEnabled:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

.field private mIsShowing:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

.field private mListenerClass:Ljava/lang/Class;

.field private mRegisterClipboardEventListener:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private mSemShowDialog:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private mSetData:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

.field private mShowClipboard:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

.field private mShowDialog:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

.field private mUnregisterClipboardEventListener:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private mUpdateFilter:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoContext;->CLIPBOARDEX_SERVICE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;->get()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectBase;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->init()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;)Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mListenerClass:Ljava/lang/Class;

    return-object p0
.end method

.method private init()V
    .locals 9

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.samsung.android.content.clipboard.SemClipboardManager"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mBaseClass:Ljava/lang/Class;

    const-string v0, "com.samsung.android.content.clipboard.SemClipboardManager$OnPasteListener"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mListenerClass:Ljava/lang/Class;

    const-string v0, "com.samsung.android.content.clipboard.data.SemClipData"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.samsung.android.content.clipboard.SemClipboardManager$OnAddClipResultListener"

    invoke-static {v1}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v0, "android.sec.clipboard.ClipboardExManager"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mBaseClass:Ljava/lang/Class;

    const-string v0, "android.sec.clipboard.ClipboardExManager$ClipboardEventListener"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mListenerClass:Ljava/lang/Class;

    const-string v0, "android.sec.clipboard.data.ClipboardData"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "android.sec.clipboard.IClipboardDataPasteEvent"

    invoke-static {v1}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    :goto_0
    new-instance v2, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    iget-object v3, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mBaseClass:Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    filled-new-array {v5, v4, v1}, [Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getData"

    invoke-direct {v2, v3, v7, v6}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v2, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mGetData:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    new-instance v2, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    iget-object v3, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mBaseClass:Ljava/lang/Class;

    const-string v6, "setData"

    filled-new-array {v5, v0}, [Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v2, v3, v6, v7}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v2, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mSetData:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    new-instance v2, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    iget-object v3, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mBaseClass:Ljava/lang/Class;

    const-string v6, "isShowing"

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Class;

    invoke-direct {v2, v3, v6, v8}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v2, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mIsShowing:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    new-instance v2, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    iget-object v3, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mBaseClass:Ljava/lang/Class;

    const-string v6, "isEnabled"

    new-array v8, v7, [Ljava/lang/Class;

    invoke-direct {v2, v3, v6, v8}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v2, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mIsEnabled:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    new-instance v2, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    iget-object v3, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mBaseClass:Ljava/lang/Class;

    const-string v6, "getLatestClip"

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v8

    invoke-direct {v2, v3, v6, v8}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v2, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mGetLatestClip:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    new-instance v2, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    iget-object v3, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mBaseClass:Ljava/lang/Class;

    const-string v6, "dismissDialog"

    new-array v8, v7, [Ljava/lang/Class;

    invoke-direct {v2, v3, v6, v8}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v2, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mDismissDialog:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v2, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    iget-object v3, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mBaseClass:Ljava/lang/Class;

    const-string v6, "dismissUIDataDialog"

    new-array v8, v7, [Ljava/lang/Class;

    invoke-direct {v2, v3, v6, v8}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v2, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mDismissUIDataDialog:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v2, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    iget-object v3, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mBaseClass:Ljava/lang/Class;

    iget-object v6, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mListenerClass:Ljava/lang/Class;

    filled-new-array {v4, v6}, [Ljava/lang/Class;

    move-result-object v6

    const-string v8, "filterClip"

    invoke-direct {v2, v3, v8, v6}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v2, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mFilterClip:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v2, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    iget-object v3, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mBaseClass:Ljava/lang/Class;

    const-string v6, "addClip"

    filled-new-array {v5, v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v2, v3, v6, v0}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v2, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mAddClip:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    iget-object v1, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mBaseClass:Ljava/lang/Class;

    new-array v2, v7, [Ljava/lang/Class;

    const-string v3, "showDialog"

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mSemShowDialog:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    iget-object v1, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mBaseClass:Ljava/lang/Class;

    iget-object v2, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mListenerClass:Ljava/lang/Class;

    filled-new-array {v4, v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mShowDialog:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    iget-object v1, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mBaseClass:Ljava/lang/Class;

    const-string v2, "hasData"

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mHasData:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    iget-object v1, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mBaseClass:Ljava/lang/Class;

    iget-object v2, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mListenerClass:Ljava/lang/Class;

    filled-new-array {v4, v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "showClipboard"

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mShowClipboard:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    iget-object v1, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mBaseClass:Ljava/lang/Class;

    const-string v2, "hasDataOf"

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mHasDataOf:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    iget-object v1, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mBaseClass:Ljava/lang/Class;

    const-string v2, "getDataListSize"

    new-array v3, v7, [Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mGetDataListSize:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    iget-object v1, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mBaseClass:Ljava/lang/Class;

    const-string v2, "getCount"

    new-array v3, v7, [Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mGetCount:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    iget-object v1, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mBaseClass:Ljava/lang/Class;

    sget-object v2, Lcom/sec/sbrowser/spl/wrapper/SemClipboardEventListener;->CLIPBOARD_EVENT_LISTENER_CLASS:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v3

    const-string v5, "registerClipboardEventListener"

    invoke-direct {v0, v1, v5, v3}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mRegisterClipboardEventListener:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    iget-object v1, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mBaseClass:Ljava/lang/Class;

    const-string v3, "unregisterClipboardEventListener"

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mUnregisterClipboardEventListener:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    iget-object v1, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mBaseClass:Ljava/lang/Class;

    iget-object v2, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mListenerClass:Ljava/lang/Class;

    filled-new-array {v4, v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "updateFilter"

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mUpdateFilter:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    return-void
.end method


# virtual methods
.method public dismissUIDataDialog()V
    .locals 2

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mDismissDialog:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mDismissUIDataDialog:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    :goto_0
    return-void
.end method

.method public exists()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mBaseClass:Ljava/lang/Class;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCount()I
    .locals 2

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mGetCount:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mGetDataListSize:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getData(Landroid/content/Context;I)Lcom/sec/sbrowser/spl/wrapper/SdlClipboardData;
    .locals 4

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    iget-object v1, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mBaseClass:Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getData"

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/ClipboardDefine;->FORMAT_TEXT_ID:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0xf424e

    if-ne p2, v1, :cond_1

    invoke-static {v2}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataText;

    iget-object v0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mGetLatestClip:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataText;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance v1, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataText;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataText;-><init>(Ljava/lang/Object;)V

    return-object v1

    :cond_1
    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/ClipboardDefine;->FORMAT_BITMAP_ID:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p2, v1, :cond_3

    invoke-static {v2}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p1, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataBitmap;

    iget-object v0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mGetLatestClip:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataBitmap;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_2
    new-instance v1, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataBitmap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataBitmap;-><init>(Ljava/lang/Object;)V

    return-object v1

    :cond_3
    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/ClipboardDefine;->FORMAT_HTML_FLAGMENT_ID:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p2, v1, :cond_5

    invoke-static {v2}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance p1, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataHTMLFragment;

    iget-object v0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mGetLatestClip:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataHTMLFragment;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_4
    new-instance v1, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataHTMLFragment;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/sec/sbrowser/spl/wrapper/ClipboardDataHTMLFragment;-><init>(Ljava/lang/Object;)V

    return-object v1

    :cond_5
    invoke-static {v2}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance p1, Lcom/sec/sbrowser/spl/wrapper/SdlClipboardData;

    iget-object v0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mGetLatestClip:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/sec/sbrowser/spl/wrapper/SdlClipboardData;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_6
    new-instance v1, Lcom/sec/sbrowser/spl/wrapper/SdlClipboardData;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/sec/sbrowser/spl/wrapper/SdlClipboardData;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public hasDataOf(I)Z
    .locals 1

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mGetLatestClip:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object v0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mHasDataOf:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mIsEnabled:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isShowing()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mIsShowing:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public reflectSucceeded(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "getData"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mGetData:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "setData"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mSetData:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_1
    const-string v0, "filterClip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mFilterClip:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_2
    const-string v0, "addClip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mAddClip:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_3
    const-string v0, "isShowing"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mIsShowing:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_4
    const-string v0, "isEnabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mIsEnabled:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_5
    const-string v0, "dismissDialog"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mDismissDialog:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_6
    const-string v0, "dismissUIDataDialog"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mDismissUIDataDialog:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_7
    const-string v0, "semShowDialog"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mSemShowDialog:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_8
    const-string v0, "showDialog"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mShowDialog:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_9
    const-string v0, "showClipboard"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mShowClipboard:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_a
    const-string v0, "hasData"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mHasData:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_b
    const-string v0, "hasDataOf"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mHasDataOf:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_c
    const-string v0, "getLatestClip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mGetLatestClip:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_d
    const-string v0, "getDataListSize"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mGetDataListSize:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_e
    const-string v0, "getCount"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mGetCount:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_f
    const-string v0, "updateFilter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mUpdateFilter:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public registerClipboardEventListener(Lcom/sec/sbrowser/spl/wrapper/SemClipboardEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mRegisterClipboardEventListener:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    iget-object p1, p1, Lcom/sec/sbrowser/spl/wrapper/SemClipboardEventListener;->mProxyInstance:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    return-void
.end method

.method public registerClipboardPasteListener(ILcom/sec/sbrowser/spl/wrapper/ClipboardExManager$ClipboardEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mFilterClip:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p2, p2, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$ClipboardEventListener;->mProxyInstance:Ljava/lang/Object;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    return-void
.end method

.method public setData(Landroid/content/Context;Lcom/sec/sbrowser/spl/wrapper/SdlClipboardData;)Z
    .locals 2

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mAddClip:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p2}, Lcom/sec/sbrowser/spl/wrapper/SdlClipboardData;->getBaseInstance()Ljava/lang/Object;

    move-result-object p2

    const/4 v1, 0x0

    filled-new-array {p1, p2, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mSetData:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    invoke-virtual {p2}, Lcom/sec/sbrowser/spl/wrapper/SdlClipboardData;->getBaseInstance()Ljava/lang/Object;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public showDialog(Landroid/content/Context;ILcom/sec/sbrowser/spl/wrapper/ClipboardExManager$ClipboardEventListener;)Z
    .locals 1

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mSemShowDialog:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1, p0, p2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mGetData:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$ClipboardEventListener;->getIClipboardDataPasteEventAdapter()Lcom/sec/sbrowser/spl/wrapper/SdlIClipboardDataPasteEvent;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public unregisterClipboardEventListener(Lcom/sec/sbrowser/spl/wrapper/SemClipboardEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mUnregisterClipboardEventListener:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    iget-object p1, p1, Lcom/sec/sbrowser/spl/wrapper/SemClipboardEventListener;->mProxyInstance:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    return-void
.end method

.method public unregisterClipboardPasteListener()V
    .locals 3

    iget-object v0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mFilterClip:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/ClipboardDefine;->FORMAT_NONE_ID:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    return-void
.end method

.method public updateFilter(ILcom/sec/sbrowser/spl/wrapper/ClipboardExManager$ClipboardEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->mUpdateFilter:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p2, p2, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager$ClipboardEventListener;->mProxyInstance:Ljava/lang/Object;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    return-void
.end method
