.class public final Lcom/samsung/android/sdk/aisuggestion/schema/CoreDocumentClasses;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001f\u0010\u0003\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/samsung/android/sdk/aisuggestion/schema/CoreDocumentClasses;",
        "",
        "()V",
        "classes",
        "",
        "Ljava/lang/Class;",
        "getClasses",
        "()Ljava/util/List;",
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
.field public static final INSTANCE:Lcom/samsung/android/sdk/aisuggestion/schema/CoreDocumentClasses;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final classes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/samsung/android/sdk/aisuggestion/schema/CoreDocumentClasses;

    invoke-direct {v0}, Lcom/samsung/android/sdk/aisuggestion/schema/CoreDocumentClasses;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/aisuggestion/schema/CoreDocumentClasses;->INSTANCE:Lcom/samsung/android/sdk/aisuggestion/schema/CoreDocumentClasses;

    const-class v5, Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;

    const-class v6, Lcom/samsung/android/sdk/aisuggestion/schema/core/RankingMetaDataDocument;

    const-class v1, Lcom/samsung/android/sdk/aisuggestion/schema/core/ContextualInsightDataDocument;

    const-class v2, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;

    const-class v3, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;

    const-class v4, Lcom/samsung/android/sdk/aisuggestion/schema/core/TimeDurationDataDocument;

    const-class v7, Lcom/samsung/android/sdk/aisuggestion/schema/core/RemoteViewsDataDocument;

    const-class v8, Lcom/samsung/android/sdk/aisuggestion/schema/core/TextResourceDataDocument;

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/aisuggestion/schema/CoreDocumentClasses;->classes:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getClasses()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/samsung/android/sdk/aisuggestion/schema/CoreDocumentClasses;->classes:Ljava/util/List;

    return-object p0
.end method
