.class public final synthetic Lcom/sec/android/app/sbrowser/common/model/global_config/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager$IGlobalConfigPreferences;


# instance fields
.field public final synthetic a:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/d;->a:Z

    return-void
.end method


# virtual methods
.method public final getValue(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/d;->a:Z

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->a(ZLandroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
