.class public final synthetic Lcom/sec/android/app/sbrowser/common/model/global_config/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager$IGlobalConfigPreferences;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/a;->a:Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getValue(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/a;->a:Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/a;->d:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->c(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
