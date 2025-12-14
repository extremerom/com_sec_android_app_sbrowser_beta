.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Y;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessToolbarShadowVisibility;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessToolbarShadowVisibility;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/u;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/u;->b:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessToolbarShadowVisibility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/u;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/u;->b:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessToolbarShadowVisibility;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessToolbarShadowVisibility;->b(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessToolbarShadowVisibility;Z)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/u;->b:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessToolbarShadowVisibility;

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessToolbarShadowVisibility;->d(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessToolbarShadowVisibility;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V

    return-void

    :pswitch_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/u;->b:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessToolbarShadowVisibility;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessToolbarShadowVisibility;->c(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessToolbarShadowVisibility;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
