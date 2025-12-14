.class public final synthetic Lcom/sec/android/app/sbrowser/settings/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/settings/AboutFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/settings/AboutFragment;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/settings/b;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/b;->b:Lcom/sec/android/app/sbrowser/settings/AboutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/b;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/b;->b:Lcom/sec/android/app/sbrowser/settings/AboutFragment;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment$checkUpdateByCase$1;->a(Lcom/sec/android/app/sbrowser/settings/AboutFragment;)V

    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment$checkUpdateByCase$1;->b(Lcom/sec/android/app/sbrowser/settings/AboutFragment;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
