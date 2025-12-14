.class Lorg/chromium/content/browser/framehost/NavigationControllerImplJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/framehost/NavigationControllerImpl$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lorg/chromium/content/browser/framehost/NavigationControllerImpl$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/content/browser/framehost/NavigationControllerImplJni;

    invoke-direct {v0}, Lorg/chromium/content/browser/framehost/NavigationControllerImplJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public canGoBack(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;)Z
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MgAw5sIR(JLjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public canGoForward(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;)Z
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MCUxt83x(JLjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public canGoToOffset(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;I)Z
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->M4jjW0jG(JLjava/lang/Object;I)Z

    move-result p0

    return p0
.end method

.method public cancelPendingReload(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MNF4lMMb(JLjava/lang/Object;)V

    return-void
.end method

.method public continuePendingReload(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->Mp5SLq_N(JLjava/lang/Object;)V

    return-void
.end method

.method public getDirectedNavigationHistory(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;Lorg/chromium/content_public/browser/NavigationHistory;ZI)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->Mx5VuK3_(JLjava/lang/Object;Ljava/lang/Object;ZI)V

    return-void
.end method

.method public getEntryAtIndex(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;I)Lorg/chromium/content_public/browser/NavigationEntry;
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MLcS2$Fy(JLjava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/content_public/browser/NavigationEntry;

    return-object p0
.end method

.method public getLastCommittedEntryIndex(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;)I
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->Mil0WqAo(JLjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getNavigationHistory(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;Ljava/lang/Object;)I
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MUZRDUOx(JLjava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getUseDesktopUserAgent(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;)Z
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MCIN9$qH(JLjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public goBack(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->Mdhd0AR3(JLjava/lang/Object;)V

    return-void
.end method

.method public goForward(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MEEEhNfT(JLjava/lang/Object;)V

    return-void
.end method

.method public goToNavigationIndex(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;I)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MuxwAbEo(JLjava/lang/Object;I)V

    return-void
.end method

.method public isInitialNavigation(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;)Z
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MEOFE6aD(JLjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public loadIfNecessary(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MWJb9aa$(JLjava/lang/Object;)V

    return-void
.end method

.method public loadUrl(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;Lorg/chromium/content_public/common/ResourceRequestBody;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLorg/chromium/url/Origin;ZZLorg/chromium/content_public/browser/AdditionalNavigationParams;JJZ)Lorg/chromium/content_public/browser/NavigationHandle;
    .locals 1

    invoke-static/range {p1 .. p26}, LJ/N;->MAqmDh4t(JLjava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZZZLjava/lang/Object;ZZLjava/lang/Object;JJZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/NavigationHandle;

    return-object v0
.end method

.method public pruneForwardEntries(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M2mQucXv(JLjava/lang/Object;)V

    return-void
.end method

.method public reload(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;Z)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->M81h$w2r(JLjava/lang/Object;Z)V

    return-void
.end method

.method public removeEntryAtIndex(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;I)Z
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MVbDeBRx(JLjava/lang/Object;I)Z

    move-result p0

    return p0
.end method

.method public setNeedsReload(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MQgIP2q9(JLjava/lang/Object;)V

    return-void
.end method

.method public setUseDesktopUserAgent(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;ZZI)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->MrilyCK6(JLjava/lang/Object;ZZI)V

    return-void
.end method
