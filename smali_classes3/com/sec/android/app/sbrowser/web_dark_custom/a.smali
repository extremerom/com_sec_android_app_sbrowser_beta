.class public final synthetic Lcom/sec/android/app/sbrowser/web_dark_custom/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomConfig$1;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomConfig$1;Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/a;->a:Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomConfig$1;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/a;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/a;->c:Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/a;->c:Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/a;->a:Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomConfig$1;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/a;->b:Landroid/content/Context;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomConfig$1;->a(Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomConfig$1;Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;)V

    return-void
.end method
