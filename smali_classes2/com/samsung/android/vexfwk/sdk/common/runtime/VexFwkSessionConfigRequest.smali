.class public final Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Builder;,
        Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\r\u0018\u0000 \"2\u00060\u0001j\u0002`\u0002:\u0002\"#B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0004R\u0017\u0010\u0008\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u001e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR(\u0010\u0016\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00108B@BX\u0082\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R$\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u0011\u001a\u00020\u00178F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR0\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 \u00a8\u0006$"
    }
    d2 = {
        "Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest;",
        "Ljava/lang/AutoCloseable;",
        "Lkotlin/AutoCloseable;",
        "<init>",
        "()V",
        "Ldb/r;",
        "close",
        "",
        "nativeHandle",
        "J",
        "getNativeHandle",
        "()J",
        "",
        "Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkStream;",
        "streamsCached",
        "Ljava/util/List;",
        "Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;",
        "value",
        "getConfigMetadata",
        "()Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;",
        "setConfigMetadata",
        "(Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;)V",
        "configMetadata",
        "",
        "getUsecaseId",
        "()I",
        "setUsecaseId",
        "(I)V",
        "usecaseId",
        "getStreams",
        "()Ljava/util/List;",
        "setStreams",
        "(Ljava/util/List;)V",
        "streams",
        "Companion",
        "Builder",
        "VexFrameworkSDK_forInternalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final nativeHandle:J

.field private streamsCached:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkStream;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest;->Companion:Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest;->Companion:Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Companion;

    invoke-static {v0}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Companion;->access$createNative(Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Companion;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest;->nativeHandle:J

    return-void
.end method

.method public static final synthetic access$createNative()J
    .locals 2

    invoke-static {}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest;->createNative()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$deleteNative(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest;->deleteNative(J)V

    return-void
.end method

.method public static final synthetic access$setConfigMetadata(Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest;Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest;->setConfigMetadata(Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;)V

    return-void
.end method

.method public static final synthetic access$setConfigMetadataNative(JJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest;->setConfigMetadataNative(JJ)V

    return-void
.end method

.method public static final synthetic access$setStreamsNative(J[J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest;->setStreamsNative(J[J)V

    return-void
.end method

.method public static final synthetic access$setUsecaseIdNative(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest;->setUsecaseIdNative(JI)V

    return-void
.end method

.method private static final native createNative()J
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native deleteNative(J)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private final getConfigMetadata()Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;
    .locals 0

    new-instance p0, Ldb/i;

    invoke-direct {p0}, Ldb/i;-><init>()V

    throw p0
.end method

.method private final setConfigMetadata(Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;)V
    .locals 3

    if-eqz p1, :cond_0

    sget-object v0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest;->Companion:Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Companion;

    iget-wide v1, p0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest;->nativeHandle:J

    invoke-virtual {p1}, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;->getNativeHandle()J

    move-result-wide p0

    invoke-static {v0, v1, v2, p0, p1}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Companion;->access$setConfigMetadataNative(Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Companion;JJ)V

    :cond_0
    return-void
.end method

.method private static final native setConfigMetadataNative(JJ)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native setStreamsNative(J[J)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native setUsecaseIdNative(JI)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method


# virtual methods
.method public close()V
    .locals 3

    sget-object v0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest;->Companion:Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Companion;

    iget-wide v1, p0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest;->nativeHandle:J

    invoke-static {v0, v1, v2}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Companion;->access$deleteNative(Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Companion;J)V

    iget-object p0, p0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest;->streamsCached:Ljava/util/List;

    if-eqz p0, :cond_0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkStream;

    invoke-virtual {v0}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkStream;->close()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getNativeHandle()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest;->nativeHandle:J

    return-wide v0
.end method

.method public final getStreams()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkStream;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest;->streamsCached:Ljava/util/List;

    if-nez p0, :cond_0

    sget-object p0, Lfb/v;->a:Lfb/v;

    :cond_0
    return-object p0
.end method

.method public final getUsecaseId()I
    .locals 0

    new-instance p0, Ldb/i;

    invoke-direct {p0}, Ldb/i;-><init>()V

    throw p0
.end method

.method public final setStreams(Ljava/util/List;)V
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkStream;",
            ">;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest;->streamsCached:Ljava/util/List;

    sget-object v0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest;->Companion:Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Companion;

    iget-wide v1, p0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest;->nativeHandle:J

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {p0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkStream;

    invoke-virtual {v3}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkStream;->getNativeHandle()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lfb/n;->h0(Ljava/util/List;)[J

    move-result-object p0

    invoke-static {v0, v1, v2, p0}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Companion;->access$setStreamsNative(Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Companion;J[J)V

    return-void
.end method

.method public final setUsecaseId(I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest;->Companion:Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Companion;

    iget-wide v1, p0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest;->nativeHandle:J

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Companion;->access$setUsecaseIdNative(Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Companion;JI)V

    return-void
.end method
