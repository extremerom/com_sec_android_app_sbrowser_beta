.class public final synthetic Lcom/sec/android/app/sbrowser/common/model/global_config/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager$IGlobalConfigPreferences;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/c;->a:I

    return-void
.end method


# virtual methods
.method public final getValue(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/c;->a:I

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->d(ILandroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
