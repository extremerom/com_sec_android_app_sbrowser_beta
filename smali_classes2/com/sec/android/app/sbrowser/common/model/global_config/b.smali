.class public final synthetic Lcom/sec/android/app/sbrowser/common/model/global_config/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager$IGlobalConfigPreferences;


# instance fields
.field public final synthetic a:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/b;->a:J

    return-void
.end method


# virtual methods
.method public final getValue(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/b;->a:J

    invoke-static {v0, v1, p1, p2}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->e(JLandroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
