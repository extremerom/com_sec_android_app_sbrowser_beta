.class public final Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TerraceSafeBrowsingApiHandlerDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate$Delegate;,
        Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate$DelegateFactory;
    }
.end annotation


# instance fields
.field private mDelegate:Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate$Delegate;

.field private mDelegateThreadChecker:Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$ThreadChecker;

.field private mIsSafeBrowsingEnabledBySettings:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mObserver:Lorg/chromium/components/safe_browsing/SafeBrowsingApiHandler$Observer;

.field private mRequestThreadChecker:Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$ThreadChecker;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;->mIsSafeBrowsingEnabledBySettings:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;JIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;->lambda$onUriLookupDone$1(JIII)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;->lambda$startUriLookup$0(J)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;Lorg/chromium/components/safe_browsing/SafeBrowsingApiHandler$Observer;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;->init(Lorg/chromium/components/safe_browsing/SafeBrowsingApiHandler$Observer;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic d(Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;->setSafeBrowsingBrowserSettings(Z)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;JLjava/lang/String;[I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;->startUriLookup(JLjava/lang/String;[I)V

    return-void
.end method

.method private init(Lorg/chromium/components/safe_browsing/SafeBrowsingApiHandler$Observer;)Z
    .locals 1

    iput-object p1, p0, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;->mObserver:Lorg/chromium/components/safe_browsing/SafeBrowsingApiHandler$Observer;

    new-instance p1, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$ThreadChecker;

    invoke-direct {p1}, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$ThreadChecker;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;->mRequestThreadChecker:Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$ThreadChecker;

    invoke-static {p1}, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$ThreadChecker;->b(Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$ThreadChecker;)V

    new-instance p1, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$ThreadChecker;

    invoke-direct {p1}, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$ThreadChecker;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;->mDelegateThreadChecker:Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$ThreadChecker;

    invoke-static {p1}, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$ThreadChecker;->b(Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$ThreadChecker;)V

    iget-object p1, p0, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;->mRequestThreadChecker:Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$ThreadChecker;

    invoke-static {p1}, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$ThreadChecker;->a(Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$ThreadChecker;)V

    iget-object p1, p0, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;->mDelegate:Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate$Delegate;

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler;->a()Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate$DelegateFactory;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-static {}, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler;->a()Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate$DelegateFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate$DelegateFactory;->getDelegate()Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate$Delegate;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;->mDelegate:Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate$Delegate;

    if-nez p1, :cond_2

    return v0

    :cond_2
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;->mDelegate:Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate$Delegate;

    invoke-interface {v0, p1, p0}, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate$Delegate;->init(Landroid/content/Context;Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onUriLookupDone$1(JIII)V
    .locals 9

    iget-object v0, p0, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;->mObserver:Lorg/chromium/components/safe_browsing/SafeBrowsingApiHandler$Observer;

    const/4 p0, 0x0

    new-array v5, p0, [I

    const-wide/16 v7, 0x0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-interface/range {v0 .. v8}, Lorg/chromium/components/safe_browsing/SafeBrowsingApiHandler$Observer;->onUrlCheckDone(JII[IIJ)V

    return-void
.end method

.method private synthetic lambda$startUriLookup$0(J)V
    .locals 9

    iget-object v0, p0, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;->mObserver:Lorg/chromium/components/safe_browsing/SafeBrowsingApiHandler$Observer;

    const/4 p0, 0x0

    new-array v5, p0, [I

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-wide v1, p1

    invoke-interface/range {v0 .. v8}, Lorg/chromium/components/safe_browsing/SafeBrowsingApiHandler$Observer;->onUrlCheckDone(JII[IIJ)V

    return-void
.end method

.method private setSafeBrowsingBrowserSettings(Z)V
    .locals 2

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setSafeBrowsingBrowserSettings: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TerraceSafeBrowsingApiHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;->mIsSafeBrowsingEnabledBySettings:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private startUriLookup(JLjava/lang/String;[I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;->mRequestThreadChecker:Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$ThreadChecker;

    invoke-static {v0}, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$ThreadChecker;->a(Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$ThreadChecker;)V

    iget-object v0, p0, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;->mIsSafeBrowsingEnabledBySettings:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "TerraceSafeBrowsingApiHandler"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;->mObserver:Lorg/chromium/components/safe_browsing/SafeBrowsingApiHandler$Observer;

    if-eqz v0, :cond_0

    const-string v0, "startUriLookup: Safe Browsing setting is turned off. Returning without looking up"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/extensions/trans/h;

    const/4 v2, 0x3

    invoke-direct {v0, p0, p1, p2, v2}, Lcom/sec/android/app/sbrowser/extensions/trans/h;-><init>(Ljava/lang/Object;JI)V

    const/4 v2, 0x7

    invoke-static {v2, v0}, Lorg/chromium/base/task/PostTask;->runOrPostTask(ILjava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;->mDelegate:Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate$Delegate;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "startUriLookup Callback= "

    invoke-static {p1, p2, v0, v1}, Landroidx/recyclerview/widget/P;->k(JLjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;->mDelegate:Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate$Delegate;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate$Delegate;->startUriLookup(JLjava/lang/String;[I)V

    return-void
.end method

.method private validateThreatType(I)I
    .locals 1

    if-eqz p1, :cond_0

    const/16 p0, 0xf

    if-eq p1, p0, :cond_0

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const-string p0, "Unsupported threat type detected: "

    const-string v0, "TerraceSafeBrowsingApiHandler"

    invoke-static {p1, p0, v0}, LV0/c;->s(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    return p1
.end method


# virtual methods
.method public onUriLookupDone(Ljava/lang/String;ZJILjava/lang/String;I)V
    .locals 8

    iget-object p6, p0, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;->mDelegateThreadChecker:Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$ThreadChecker;

    invoke-static {p6}, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$ThreadChecker;->a(Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$ThreadChecker;)V

    iget-object p6, p0, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;->mObserver:Lorg/chromium/components/safe_browsing/SafeBrowsingApiHandler$Observer;

    if-nez p6, :cond_0

    return-void

    :cond_0
    const-string p6, "TerraceSafeBrowsingApiHandler"

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceActivity;->getActiveTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/sec/terrace/TerraceActivity;->getActiveTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->isIncognito()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;->mIsSafeBrowsingEnabledBySettings:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-static {p1, v2, v0, v1}, Lcom/sec/terrace/browser/safe_browsing/TinSafeBrowsingApiHandler;->updateSafeBrowsingStats(Ljava/lang/String;ZJ)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "TerraceActivity or getActiveTerrace() is null"

    invoke-static {p6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;->mIsSafeBrowsingEnabledBySettings:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    :cond_4
    iget-object p1, p0, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;->mIsSafeBrowsingEnabledBySettings:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_6

    if-nez p5, :cond_5

    const/4 p1, 0x0

    move v5, p1

    move v7, v5

    goto :goto_2

    :cond_5
    const/4 p1, 0x1

    const/4 v0, 0x5

    move v5, p1

    move v7, v0

    :goto_2
    invoke-direct {p0, p7}, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;->validateThreatType(I)I

    move-result v6

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onUriLookupDone callback= "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " detected= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " result= "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " type= "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/sec/terrace/browser/safe_browsing/a;

    move-object v1, p1

    move-object v2, p0

    move-wide v3, p3

    invoke-direct/range {v1 .. v7}, Lcom/sec/terrace/browser/safe_browsing/a;-><init>(Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;JIII)V

    const/4 p0, 0x7

    invoke-static {p0, p1}, Lorg/chromium/base/task/PostTask;->runOrPostTask(ILjava/lang/Runnable;)V

    :cond_6
    return-void
.end method
