.class public final Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/appsearch/annotation/Document;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Companion;,
        Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0008\u0007\u0018\u0000 \u00182\u00020\u0001:\u0002\u0017\u0018BC\u0008\u0000\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u000cR\u0016\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010R\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u000b\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0013R\u0016\u0010\t\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0010R\u0016\u0010\n\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0010\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument;",
        "",
        "namespace",
        "",
        "id",
        "schemaVersion",
        "",
        "icon",
        "Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;",
        "type",
        "value",
        "status",
        "(Ljava/lang/String;Ljava/lang/String;JLcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;Ljava/lang/String;Ljava/lang/String;J)V",
        "getIcon",
        "()Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;",
        "getId",
        "()Ljava/lang/String;",
        "getNamespace",
        "getSchemaVersion",
        "()J",
        "getStatus",
        "getType",
        "getValue",
        "Builder",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SCHEMA_TYPE:Ljava/lang/String; = "ContextualInsightData:IoTEnvFactor"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SCHEMA_TYPE_VERSION:J = 0x7L

.field public static final SLEEP_FACTOR_STATUS_CARE_NEEDED:J = 0x2L

.field public static final SLEEP_FACTOR_STATUS_FIRST_INDEX:J = 0x1L

.field public static final SLEEP_FACTOR_STATUS_GOOD:J = 0x1L

.field public static final SLEEP_FACTOR_STATUS_LAST_INDEX:J = 0x2L


# instance fields
.field private final icon:Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;
    .annotation build Landroidx/appsearch/annotation/Document$DocumentProperty;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final id:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$Id;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final namespace:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$Namespace;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final schemaVersion:J
    .annotation build Landroidx/appsearch/annotation/Document$LongProperty;
    .end annotation
.end field

.field private final status:J
    .annotation build Landroidx/appsearch/annotation/Document$LongProperty;
    .end annotation
.end field

.field private final type:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$StringProperty;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final value:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$StringProperty;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument;->Companion:Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "namespace"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "icon"

    invoke-static {p5, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p6, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p7, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument;->namespace:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument;->id:Ljava/lang/String;

    iput-wide p3, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument;->schemaVersion:J

    iput-object p5, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument;->icon:Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;

    iput-object p6, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument;->type:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument;->value:Ljava/lang/String;

    iput-wide p8, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument;->status:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JLcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;Ljava/lang/String;Ljava/lang/String;JILtb/f;)V
    .locals 11

    and-int/lit8 v0, p10, 0x1

    if-eqz v0, :cond_0

    const-string v0, "ContextualInsightData"

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v0, p10, 0x4

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x7

    move-wide v4, v0

    goto :goto_1

    :cond_1
    move-wide v4, p3

    :goto_1
    move-object v1, p0

    move-object v3, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-wide/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public final getIcon()Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument;->icon:Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;

    return-object p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getNamespace()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument;->namespace:Ljava/lang/String;

    return-object p0
.end method

.method public final getSchemaVersion()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument;->schemaVersion:J

    return-wide v0
.end method

.method public final getStatus()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument;->status:J

    return-wide v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument;->type:Ljava/lang/String;

    return-object p0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/smartthings/IoTEnvFactorDataDocument;->value:Ljava/lang/String;

    return-object p0
.end method
