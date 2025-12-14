.class Lcom/sec/terrace/browser/extensions/TerraceExtensionUtilJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$Natives;


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

.method public static get()Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtilJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtilJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public canBeSecretModeEnabled(JLcom/sec/terrace/browser/extensions/TerraceExtensionUtil;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MdYxSRhF(JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getExtensionOptionPage(JLcom/sec/terrace/browser/extensions/TerraceExtensionUtil;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MvCeYFG8(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getExtensionPermissions(JLcom/sec/terrace/browser/extensions/TerraceExtensionUtil;Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MWIVX_vD(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getExtensionPermissionsWithAPISet(JLcom/sec/terrace/browser/extensions/TerraceExtensionUtil;[I)[Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->M3ImlnHO(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getInstallSource(JLcom/sec/terrace/browser/extensions/TerraceExtensionUtil;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->Mxy29$Fu(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getInstalledExtVer(JLcom/sec/terrace/browser/extensions/TerraceExtensionUtil;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MbzcIWQ6(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getSecretModeState(JLcom/sec/terrace/browser/extensions/TerraceExtensionUtil;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MyluEy3w(JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public init(Ljava/lang/Object;)J
    .locals 0

    invoke-static {p1}, LJ/N;->MEPehI1Y(Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public initialized(JLcom/sec/terrace/browser/extensions/TerraceExtensionUtil;)Z
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->Mv99yHCf(JLjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isEnabledInNative(JLcom/sec/terrace/browser/extensions/TerraceExtensionUtil;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->M2y7H5fw(JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isFirstParty(JLcom/sec/terrace/browser/extensions/TerraceExtensionUtil;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MHMhA5SN(JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isInstalledInNative(JLcom/sec/terrace/browser/extensions/TerraceExtensionUtil;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MHyyU9EW(JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public readSIXOrigin(JLcom/sec/terrace/browser/extensions/TerraceExtensionUtil;Ljava/lang/String;)I
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MJopwyHr(JLjava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public setInstallSource(JLcom/sec/terrace/browser/extensions/TerraceExtensionUtil;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->M0nFwm$k(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public storeSIXOrigin(JLcom/sec/terrace/browser/extensions/TerraceExtensionUtil;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->M_WKJ9Bk(JLjava/lang/Object;Ljava/lang/Object;I)V

    return-void
.end method

.method public updateSecretModeState(JLcom/sec/terrace/browser/extensions/TerraceExtensionUtil;Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MzveSDWx(JLjava/lang/Object;Ljava/lang/Object;Z)V

    return-void
.end method
