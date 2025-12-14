.class public abstract Lorg/chromium/base/Flag;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sFlagsCreatedForTesting:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/chromium/base/Flag;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final mFeatureMap:Lorg/chromium/base/FeatureMap;

.field protected final mFeatureName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/chromium/base/Flag;->sFlagsCreatedForTesting:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/base/FeatureMap;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/base/Flag;->mFeatureMap:Lorg/chromium/base/FeatureMap;

    iput-object p2, p0, Lorg/chromium/base/Flag;->mFeatureName:Ljava/lang/String;

    sget-boolean p1, Lorg/chromium/build/BuildConfig;->IS_FOR_TEST:Z

    if-eqz p1, :cond_0

    sget-object p1, Lorg/chromium/base/Flag;->sFlagsCreatedForTesting:Ljava/util/HashMap;

    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/base/Flag;

    :cond_0
    return-void
.end method


# virtual methods
.method public getFeatureName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/Flag;->mFeatureName:Ljava/lang/String;

    return-object p0
.end method
