.class public final synthetic Lcom/sec/android/app/sbrowser/settings/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$PromptScreenCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/settings/utils/a;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/utils/a;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Z)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/utils/a;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/utils/a;->b:Landroid/app/Activity;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->c(Landroid/app/Activity;Z)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->a(Landroid/app/Activity;Z)V

    return-void

    :pswitch_1
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->d(Landroid/app/Activity;Z)V

    return-void

    :pswitch_2
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->b(Landroid/app/Activity;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
