.class public final Lcom/samsung/android/app/dvs/library/dvsagent/utils/SYstemPropertiesUtilsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0000\u001a\u0006\u0010\u0008\u001a\u00020\u0001\u001a\u0006\u0010\t\u001a\u00020\u0001\u001a\u0006\u0010\n\u001a\u00020\u0001\u001a\u0006\u0010\u000b\u001a\u00020\u000c\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\"\u0014\u0010\u0004\u001a\u00020\u0001X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0003\"\u0014\u0010\u0006\u001a\u00020\u0001X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0003\u00a8\u0006\r"
    }
    d2 = {
        "KEY_TYPE",
        "",
        "getKEY_TYPE",
        "()Ljava/lang/String;",
        "PRODUCT_MODEL",
        "getPRODUCT_MODEL",
        "RELEASE_VERSION",
        "getRELEASE_VERSION",
        "getKeyType",
        "getModelName",
        "getOSVersion",
        "isSAKSupport",
        "",
        "DvsAgent-INTERNAL-1.0.7_debug"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final KEY_TYPE:Ljava/lang/String; = "ro.security.keystore.keytype"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PRODUCT_MODEL:Ljava/lang/String; = "ro.product.model"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final RELEASE_VERSION:Ljava/lang/String; = "ro.build.version.release"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static final getKEY_TYPE()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/SYstemPropertiesUtilsKt;->KEY_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method public static final getKeyType()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/SystemPropertiesWrapper;

    invoke-direct {v0}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/SystemPropertiesWrapper;-><init>()V

    sget-object v1, Lcom/samsung/android/app/dvs/library/dvsagent/utils/SYstemPropertiesUtilsKt;->KEY_TYPE:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/SystemPropertiesWrapper;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sakv2"

    invoke-static {v0, v1}, LKc/k;->q(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SAKV2"

    return-object v0

    :cond_0
    const-string v0, "SAKV1"

    return-object v0
.end method

.method public static final getModelName()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/SystemPropertiesWrapper;

    invoke-direct {v0}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/SystemPropertiesWrapper;-><init>()V

    sget-object v1, Lcom/samsung/android/app/dvs/library/dvsagent/utils/SYstemPropertiesUtilsKt;->PRODUCT_MODEL:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/SystemPropertiesWrapper;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getOSVersion()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/SystemPropertiesWrapper;

    invoke-direct {v0}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/SystemPropertiesWrapper;-><init>()V

    sget-object v1, Lcom/samsung/android/app/dvs/library/dvsagent/utils/SYstemPropertiesUtilsKt;->RELEASE_VERSION:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/SystemPropertiesWrapper;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getPRODUCT_MODEL()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/SYstemPropertiesUtilsKt;->PRODUCT_MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static final getRELEASE_VERSION()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/SYstemPropertiesUtilsKt;->RELEASE_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public static final isSAKSupport()Z
    .locals 3

    new-instance v0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/SystemPropertiesWrapper;

    invoke-direct {v0}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/SystemPropertiesWrapper;-><init>()V

    sget-object v1, Lcom/samsung/android/app/dvs/library/dvsagent/utils/SYstemPropertiesUtilsKt;->KEY_TYPE:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/SystemPropertiesWrapper;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sak"

    invoke-static {v0, v1}, LKc/k;->q(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
