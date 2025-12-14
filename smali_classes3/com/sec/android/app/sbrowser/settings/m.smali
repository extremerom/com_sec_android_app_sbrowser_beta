.class public final synthetic Lcom/sec/android/app/sbrowser/settings/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lcom/sec/android/app/sbrowser/settings/m;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/m;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/m;->c:Landroid/view/View;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/m;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/m;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/m;->c:Landroid/view/View;

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/m;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/m;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;

    invoke-static {p0, v0, v1, p1, p2}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->h(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;Landroid/widget/LinearLayout;Ljava/util/List;Landroid/widget/CompoundButton;Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/m;->d:Ljava/lang/Object;

    check-cast v0, Lw2/H;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/m;->b:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/m;->c:Landroid/view/View;

    check-cast p0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v1, p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;->e(Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;Landroidx/appcompat/widget/AppCompatTextView;Lw2/H;Landroid/widget/CompoundButton;Z)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/m;->d:Ljava/lang/Object;

    check-cast v0, Lw2/H;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/m;->b:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/m;->c:Landroid/view/View;

    check-cast p0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v1, p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;->k(Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;Landroidx/appcompat/widget/AppCompatTextView;Lw2/H;Landroid/widget/CompoundButton;Z)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/m;->d:Ljava/lang/Object;

    check-cast v0, Lw2/H;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/m;->b:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/m;->c:Landroid/view/View;

    check-cast p0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v1, p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;->g(Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;Landroidx/appcompat/widget/AppCompatTextView;Lw2/H;Landroid/widget/CompoundButton;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
