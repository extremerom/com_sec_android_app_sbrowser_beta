.class public final Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001BA\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nJ\u0006\u0010\u001c\u001a\u00020\u001dJ\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010\"\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0014JJ\u0010#\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\tH\u00c6\u0001\u00a2\u0006\u0002\u0010$J\u0013\u0010%\u001a\u00020&2\u0008\u0010\'\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010(\u001a\u00020)H\u00d6\u0001J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0003J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tJ\t\u0010*\u001a\u00020\u0003H\u00d6\u0001J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0003J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0003R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001e\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0010\"\u0004\u0008\u0019\u0010\u0012R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0010\"\u0004\u0008\u001b\u0010\u0012\u00a8\u0006+"
    }
    d2 = {
        "Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;",
        "",
        "id",
        "",
        "icon",
        "Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;",
        "type",
        "value",
        "status",
        "",
        "(Ljava/lang/String;Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V",
        "getIcon",
        "()Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;",
        "setIcon",
        "(Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;)V",
        "getId",
        "()Ljava/lang/String;",
        "setId",
        "(Ljava/lang/String;)V",
        "getStatus",
        "()Ljava/lang/Long;",
        "setStatus",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "getType",
        "setType",
        "getValue",
        "setValue",
        "build",
        "Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "(Ljava/lang/String;Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "deepsky-sdk-aisuggestion-1.6.13_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private icon:Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private status:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private value:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 8

    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;-><init>(Ljava/lang/String;Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ILtb/f;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->icon:Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;

    iput-object p3, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->type:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->value:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->status:Ljava/lang/Long;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ILtb/f;)V
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    const-string p1, ""

    :cond_0
    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_1

    move-object p7, v0

    goto :goto_0

    :cond_1
    move-object p7, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    move-object v1, v0

    goto :goto_1

    :cond_2
    move-object v1, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    move-object v2, v0

    goto :goto_2

    :cond_3
    move-object v2, p4

    :goto_2
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    goto :goto_3

    :cond_4
    move-object v0, p5

    :goto_3
    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v1

    move-object p6, v2

    move-object p7, v0

    invoke-direct/range {p2 .. p7}, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;-><init>(Ljava/lang/String;Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;Ljava/lang/String;Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ILjava/lang/Object;)Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->icon:Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->type:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->value:Ljava/lang/String;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->status:Ljava/lang/Long;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->copy(Ljava/lang/String;Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final build()Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument;
    .locals 13
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v12, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument;

    iget-object v2, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->id:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v5, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->icon:Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;

    if-eqz v5, :cond_3

    iget-object v6, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->type:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v7, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->value:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->status:Ljava/lang/Long;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v10, 0x5

    const/4 v11, 0x0

    const/4 v1, 0x0

    const-wide/16 v3, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;Ljava/lang/String;Ljava/lang/String;JILtb/f;)V

    return-object v12

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "status is required"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "value is required"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "type is required"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "icon is required"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "id is required"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final component1()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->icon:Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->type:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->value:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Ljava/lang/Long;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->status:Ljava/lang/Long;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;-><init>(Ljava/lang/String;Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;

    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->icon:Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->icon:Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->type:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->value:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->value:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->status:Ljava/lang/Long;

    iget-object p1, p1, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->status:Ljava/lang/Long;

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getIcon()Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->icon:Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;

    return-object p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getStatus()Ljava/lang/Long;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->status:Ljava/lang/Long;

    return-object p0
.end method

.method public final getType()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->type:Ljava/lang/String;

    return-object p0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->value:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->id:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->icon:Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->type:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->value:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->status:Ljava/lang/Long;

    if-nez p0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    return v0
.end method

.method public final icon(Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;)Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;
    .locals 1
    .param p1    # Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "icon"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->icon:Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;

    return-object p0
.end method

.method public final id(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final setIcon(Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;)V
    .locals 0
    .param p1    # Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->icon:Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->id:Ljava/lang/String;

    return-void
.end method

.method public final setStatus(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->status:Ljava/lang/Long;

    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->type:Ljava/lang/String;

    return-void
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->value:Ljava/lang/String;

    return-void
.end method

.method public final status(J)Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x2

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->status:Ljava/lang/Long;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "status should be between 1 and 2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->icon:Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;

    iget-object v2, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->type:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->value:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->status:Ljava/lang/Long;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Builder(id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", icon="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", type="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", value="

    const-string v1, ", status="

    invoke-static {v4, v2, v0, v3, v1}, LB/e;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final type(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->type:Ljava/lang/String;

    return-object p0
.end method

.method public final value(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;->value:Ljava/lang/String;

    return-object p0
.end method
