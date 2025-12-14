.class public Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;->mParams:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public build()Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;->mParams:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;-><init>(Ljava/util/Map;I)V

    return-object v0
.end method

.method public param(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;->mParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-object p0
.end method
