.class public final Lw2/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/n;


# instance fields
.field public final synthetic a:Landroidx/preference/PreferenceGroup;

.field public final synthetic b:Landroidx/preference/g;


# direct methods
.method public constructor <init>(Landroidx/preference/g;Landroidx/preference/PreferenceGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw2/C;->b:Landroidx/preference/g;

    iput-object p2, p0, Lw2/C;->a:Landroidx/preference/PreferenceGroup;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget-object p1, p0, Lw2/C;->a:Landroidx/preference/PreferenceGroup;

    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->setInitialExpandedChildrenCount(I)V

    iget-object p0, p0, Lw2/C;->b:Landroidx/preference/g;

    iget-object v0, p0, Landroidx/preference/g;->f:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/preference/g;->g:Lw2/t;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getOnExpandButtonClickListener()Lw2/B;

    const/4 p0, 0x1

    return p0
.end method
