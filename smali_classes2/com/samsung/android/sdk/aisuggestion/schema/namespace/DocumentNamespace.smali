.class public final Lcom/samsung/android/sdk/aisuggestion/schema/namespace/DocumentNamespace;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/samsung/android/sdk/aisuggestion/schema/namespace/DocumentNamespace;",
        "",
        "()V",
        "NAMESPACE",
        "",
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
.field public static final INSTANCE:Lcom/samsung/android/sdk/aisuggestion/schema/namespace/DocumentNamespace;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NAMESPACE:Ljava/lang/String; = "ContextualInsightData"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/aisuggestion/schema/namespace/DocumentNamespace;

    invoke-direct {v0}, Lcom/samsung/android/sdk/aisuggestion/schema/namespace/DocumentNamespace;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/aisuggestion/schema/namespace/DocumentNamespace;->INSTANCE:Lcom/samsung/android/sdk/aisuggestion/schema/namespace/DocumentNamespace;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
