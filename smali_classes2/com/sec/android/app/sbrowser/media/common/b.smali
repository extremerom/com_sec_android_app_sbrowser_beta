.class public final synthetic Lcom/sec/android/app/sbrowser/media/common/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/common/b;->a:Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/common/b;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/common/b;->a:Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/common/b;->b:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/media/common/MediaFeatureConfig$1;->a(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;Landroid/content/Context;)V

    return-void
.end method
