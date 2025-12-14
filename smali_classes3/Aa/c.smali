.class public final synthetic LAa/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPageIndicator$PageSelectListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;I)V
    .locals 0

    iput p2, p0, LAa/c;->a:I

    iput-object p1, p0, LAa/c;->b:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageSelected(I)V
    .locals 1

    iget v0, p0, LAa/c;->a:I

    iget-object p0, p0, LAa/c;->b:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->a(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;I)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->b(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
