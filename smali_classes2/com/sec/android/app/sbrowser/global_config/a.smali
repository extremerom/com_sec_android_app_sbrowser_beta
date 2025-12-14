.class public final synthetic Lcom/sec/android/app/sbrowser/global_config/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$UpdateCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/global_config/GlobalConfig;

.field public final synthetic c:Lcom/sec/android/app/sbrowser/global_config/GlobalConfig$UpdateCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/global_config/GlobalConfig;Lcom/sec/android/app/sbrowser/global_config/GlobalConfig$UpdateCallback;I)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/global_config/a;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/global_config/a;->b:Lcom/sec/android/app/sbrowser/global_config/GlobalConfig;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/global_config/a;->c:Lcom/sec/android/app/sbrowser/global_config/GlobalConfig$UpdateCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinished(Landroid/content/Context;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/global_config/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/global_config/a;->b:Lcom/sec/android/app/sbrowser/global_config/GlobalConfig;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/global_config/a;->c:Lcom/sec/android/app/sbrowser/global_config/GlobalConfig$UpdateCallback;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfig;->c(Lcom/sec/android/app/sbrowser/global_config/GlobalConfig;Lcom/sec/android/app/sbrowser/global_config/GlobalConfig$UpdateCallback;Landroid/content/Context;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/global_config/a;->b:Lcom/sec/android/app/sbrowser/global_config/GlobalConfig;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/global_config/a;->c:Lcom/sec/android/app/sbrowser/global_config/GlobalConfig$UpdateCallback;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfig;->a(Lcom/sec/android/app/sbrowser/global_config/GlobalConfig;Lcom/sec/android/app/sbrowser/global_config/GlobalConfig$UpdateCallback;Landroid/content/Context;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/global_config/a;->b:Lcom/sec/android/app/sbrowser/global_config/GlobalConfig;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/global_config/a;->c:Lcom/sec/android/app/sbrowser/global_config/GlobalConfig$UpdateCallback;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfig;->b(Lcom/sec/android/app/sbrowser/global_config/GlobalConfig;Lcom/sec/android/app/sbrowser/global_config/GlobalConfig$UpdateCallback;Landroid/content/Context;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
