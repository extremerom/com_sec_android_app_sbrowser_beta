.class public final Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptorKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0002*\u00020\u0001\u001a\n\u0010\u0003\u001a\u00020\u0002*\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "toEntity",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorEntity;",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;",
        "toDomain",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptorDto;",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final toDomain(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorEntity;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;
    .locals 7
    .param p0    # Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorEntity;->getId()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorEntity;->getThreatType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorEntity;->getPlatformType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorEntity;->getThreatEntryType()Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final toDomain(Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptorDto;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;
    .locals 3
    .param p0    # Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptorDto;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptorDto;->getThreatType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptorDto;->getPlatformType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptorDto;->getThreatEntryType()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final toEntity(Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorEntity;
    .locals 7
    .param p0    # Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorEntity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;->getId()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;->getThreatType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;->getPlatformType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;->getThreatEntryType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ltb/k;->c(Ljava/lang/Object;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorEntity;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
