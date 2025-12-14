.class public Lcom/sec/terrace/browser/si_translate/TranslateBarBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/si_translate/TranslateBarBridge$Natives;,
        Lcom/sec/terrace/browser/si_translate/TranslateBarBridge$TranslateBridgeCallback;
    }
.end annotation


# static fields
.field private static volatile sCallbackRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sec/terrace/browser/si_translate/TranslateBarBridge$TranslateBridgeCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/sec/terrace/browser/si_translate/TranslateBarBridge;->sCallbackRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Lcom/sec/terrace/browser/si_translate/TranslateBarBridge$TranslateBridgeCallback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/sec/terrace/browser/si_translate/TranslateBarBridge;->sCallbackRef:Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcom/sec/terrace/browser/si_translate/TranslateBarBridgeJni;->get()Lcom/sec/terrace/browser/si_translate/TranslateBarBridge$Natives;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/sec/terrace/browser/si_translate/TranslateBarBridge$Natives;->init(Lcom/sec/terrace/browser/si_translate/TranslateBarBridge;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/terrace/browser/si_translate/TranslateBarBridge;->mNativePtr:J

    return-void
.end method

.method public static clearToOriginal(I)V
    .locals 2

    if-gez p0, :cond_0

    const-string v0, "clearToOriginal Invalid tabId: "

    const-string v1, "TranslateBarBridge"

    invoke-static {p0, v0, v1}, LV0/c;->y(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/si_translate/TranslateBarBridgeJni;->get()Lcom/sec/terrace/browser/si_translate/TranslateBarBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/si_translate/TranslateBarBridge$Natives;->clearToOriginal(I)V

    return-void
.end method

.method private static getLanguageCode(Z)Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lcom/sec/terrace/browser/si_translate/TranslateBarBridge;->sCallbackRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/browser/si_translate/TranslateBarBridge$TranslateBridgeCallback;

    const-string v1, "en"

    const-string v2, "TranslateBarBridge"

    if-nez v0, :cond_0

    const-string p0, "Callback is null, returning default language \'en\'"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/si_translate/TranslateBarBridge$TranslateBridgeCallback;->getLanguageCode(Z)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    const-string p0, "Callback returned invalid language code, using default \'en\'"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private static getRuntimeFlags()[Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lcom/sec/terrace/browser/si_translate/TranslateBarBridge;->sCallbackRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/browser/si_translate/TranslateBarBridge$TranslateBridgeCallback;

    if-nez v0, :cond_0

    const-string v0, "TranslateBarBridge"

    const-string v1, "Callback is null, returning empty array"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/sec/terrace/browser/si_translate/TranslateBarBridge$TranslateBridgeCallback;->getRuntimeFlags()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isSplitMode()Z
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lcom/sec/terrace/browser/si_translate/TranslateBarBridge;->sCallbackRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/browser/si_translate/TranslateBarBridge$TranslateBridgeCallback;

    if-nez v0, :cond_0

    const-string v0, "TranslateBarBridge"

    const-string v1, "Callback is null, returning null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Lcom/sec/terrace/browser/si_translate/TranslateBarBridge$TranslateBridgeCallback;->isSplitMode()Z

    move-result v0

    return v0
.end method

.method public static onCheckLangOnNeverTranslateList(I)Z
    .locals 2

    if-gez p0, :cond_0

    const-string v0, "onCheckLangOnNeverTranslateList Invalid tabId: "

    const-string v1, "TranslateBarBridge"

    invoke-static {p0, v0, v1}, LV0/c;->y(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/si_translate/TranslateBarBridgeJni;->get()Lcom/sec/terrace/browser/si_translate/TranslateBarBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/si_translate/TranslateBarBridge$Natives;->onCheckLangOnNeverTranslateList(I)Z

    move-result p0

    return p0
.end method

.method public static onCheckSiteOnNeverTranslateList(I)Z
    .locals 2

    if-gez p0, :cond_0

    const-string v0, "onCheckSiteOnNeverTranslateList Invalid tabId: "

    const-string v1, "TranslateBarBridge"

    invoke-static {p0, v0, v1}, LV0/c;->y(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/si_translate/TranslateBarBridgeJni;->get()Lcom/sec/terrace/browser/si_translate/TranslateBarBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/si_translate/TranslateBarBridge$Natives;->onCheckSiteOnNeverTranslateList(I)Z

    move-result p0

    return p0
.end method

.method public static onClosed(IZ)V
    .locals 1

    if-gez p0, :cond_0

    const-string p1, "onClosed Invalid tabId: "

    const-string v0, "TranslateBarBridge"

    invoke-static {p0, p1, v0}, LV0/c;->y(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/si_translate/TranslateBarBridgeJni;->get()Lcom/sec/terrace/browser/si_translate/TranslateBarBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/si_translate/TranslateBarBridge$Natives;->onClosed(IZ)V

    return-void
.end method

.method public static onSetNeverTranslateLanguage(IZ)V
    .locals 1

    if-gez p0, :cond_0

    const-string p1, "onSetNeverTranslateLanguage Invalid tabId: "

    const-string v0, "TranslateBarBridge"

    invoke-static {p0, p1, v0}, LV0/c;->y(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/si_translate/TranslateBarBridgeJni;->get()Lcom/sec/terrace/browser/si_translate/TranslateBarBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/si_translate/TranslateBarBridge$Natives;->onSetNeverTranslateLanguage(IZ)V

    return-void
.end method

.method public static onSetNeverTranslateSite(IZ)V
    .locals 1

    if-gez p0, :cond_0

    const-string p1, "onSetNeverTranslateSite Invalid tabId: "

    const-string v0, "TranslateBarBridge"

    invoke-static {p0, p1, v0}, LV0/c;->y(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/si_translate/TranslateBarBridgeJni;->get()Lcom/sec/terrace/browser/si_translate/TranslateBarBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/si_translate/TranslateBarBridge$Natives;->onSetNeverTranslateSite(IZ)V

    return-void
.end method

.method private static onShow()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v0, "TranslateBarBridge"

    const-string v1, "Translate bar should be shown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static onShowOriginal(I)V
    .locals 2

    if-gez p0, :cond_0

    const-string v0, "onShowOriginal Invalid tabId: "

    const-string v1, "TranslateBarBridge"

    invoke-static {p0, v0, v1}, LV0/c;->y(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/si_translate/TranslateBarBridgeJni;->get()Lcom/sec/terrace/browser/si_translate/TranslateBarBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/si_translate/TranslateBarBridge$Natives;->onShowOriginal(I)V

    return-void
.end method

.method public static onSourceLanguageChanged(I)V
    .locals 2

    if-gez p0, :cond_0

    const-string v0, "onSourceLanguageChangedInvalid tabId: "

    const-string v1, "TranslateBarBridge"

    invoke-static {p0, v0, v1}, LV0/c;->y(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/si_translate/TranslateBarBridgeJni;->get()Lcom/sec/terrace/browser/si_translate/TranslateBarBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/si_translate/TranslateBarBridge$Natives;->onSourceLanguageChanged(I)V

    return-void
.end method

.method public static onSplitViewChanged(ZII)V
    .locals 1

    if-ltz p1, :cond_1

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/si_translate/TranslateBarBridgeJni;->get()Lcom/sec/terrace/browser/si_translate/TranslateBarBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/terrace/browser/si_translate/TranslateBarBridge$Natives;->onSplitViewChanged(ZII)V

    return-void

    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onSplitViewChanged Invalid tab IDs: left="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", right="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TranslateBarBridge"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static onTargetLanguageChanged(I)V
    .locals 2

    if-gez p0, :cond_0

    const-string v0, "onTargetLanguageChanged Invalid tabId: "

    const-string v1, "TranslateBarBridge"

    invoke-static {p0, v0, v1}, LV0/c;->y(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/si_translate/TranslateBarBridgeJni;->get()Lcom/sec/terrace/browser/si_translate/TranslateBarBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/si_translate/TranslateBarBridge$Natives;->onTargetLanguageChanged(I)V

    return-void
.end method

.method public static onTranslate(I)V
    .locals 2

    if-gez p0, :cond_0

    const-string v0, "onTranslate Invalid tabId: "

    const-string v1, "TranslateBarBridge"

    invoke-static {p0, v0, v1}, LV0/c;->y(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/si_translate/TranslateBarBridgeJni;->get()Lcom/sec/terrace/browser/si_translate/TranslateBarBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/si_translate/TranslateBarBridge$Natives;->onTranslate(I)V

    return-void
.end method

.method public static startTranslate(I)V
    .locals 2

    if-gez p0, :cond_0

    const-string v0, "startTranslate Invalid tabId: "

    const-string v1, "TranslateBarBridge"

    invoke-static {p0, v0, v1}, LV0/c;->y(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/si_translate/TranslateBarBridgeJni;->get()Lcom/sec/terrace/browser/si_translate/TranslateBarBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/si_translate/TranslateBarBridge$Natives;->startTranslate(I)V

    return-void
.end method
