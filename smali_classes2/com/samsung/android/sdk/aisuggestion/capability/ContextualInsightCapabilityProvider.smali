.class public final Lcom/samsung/android/sdk/aisuggestion/capability/ContextualInsightCapabilityProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/samsung/android/sdk/aisuggestion/capability/ContextualInsightCapabilityProvider;",
        "",
        "()V",
        "getCapability",
        "Lcom/samsung/android/sdk/aisuggestion/capability/ContextualInsightCapability;",
        "context",
        "Landroid/content/Context;",
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
.field public static final INSTANCE:Lcom/samsung/android/sdk/aisuggestion/capability/ContextualInsightCapabilityProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/aisuggestion/capability/ContextualInsightCapabilityProvider;

    invoke-direct {v0}, Lcom/samsung/android/sdk/aisuggestion/capability/ContextualInsightCapabilityProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/aisuggestion/capability/ContextualInsightCapabilityProvider;->INSTANCE:Lcom/samsung/android/sdk/aisuggestion/capability/ContextualInsightCapabilityProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getCapability(Landroid/content/Context;)Lcom/samsung/android/sdk/aisuggestion/capability/ContextualInsightCapability;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
