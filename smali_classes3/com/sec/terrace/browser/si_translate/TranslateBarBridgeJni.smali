.class public Lcom/sec/terrace/browser/si_translate/TranslateBarBridgeJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/si_translate/TranslateBarBridge$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/sec/terrace/browser/si_translate/TranslateBarBridge$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/si_translate/TranslateBarBridgeJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/si_translate/TranslateBarBridgeJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public clearToOriginal(I)V
    .locals 0

    invoke-static {p1}, LJ/N;->M253zw4f(I)V

    return-void
.end method

.method public init(Lcom/sec/terrace/browser/si_translate/TranslateBarBridge;)J
    .locals 0

    invoke-static {p1}, LJ/N;->MKiBsa7d(Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public onCheckLangOnNeverTranslateList(I)Z
    .locals 0

    invoke-static {p1}, LJ/N;->Mp65W7Sm(I)Z

    move-result p0

    return p0
.end method

.method public onCheckSiteOnNeverTranslateList(I)Z
    .locals 0

    invoke-static {p1}, LJ/N;->MqLV90eu(I)Z

    move-result p0

    return p0
.end method

.method public onClosed(IZ)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->M6Wz$P08(IZ)V

    return-void
.end method

.method public onSetNeverTranslateLanguage(IZ)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->Mqu0MSbi(IZ)V

    return-void
.end method

.method public onSetNeverTranslateSite(IZ)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MtyZ1ios(IZ)V

    return-void
.end method

.method public onShowOriginal(I)V
    .locals 0

    invoke-static {p1}, LJ/N;->MiS7iD7o(I)V

    return-void
.end method

.method public onSourceLanguageChanged(I)V
    .locals 0

    invoke-static {p1}, LJ/N;->MojJ7R9j(I)V

    return-void
.end method

.method public onSplitViewChanged(ZII)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MLkKU9BT(ZII)V

    return-void
.end method

.method public onTargetLanguageChanged(I)V
    .locals 0

    invoke-static {p1}, LJ/N;->MRMNCOxd(I)V

    return-void
.end method

.method public onTranslate(I)V
    .locals 0

    invoke-static {p1}, LJ/N;->MgLzZEW8(I)V

    return-void
.end method

.method public startTranslate(I)V
    .locals 0

    invoke-static {p1}, LJ/N;->MJ8VMc_e(I)V

    return-void
.end method
