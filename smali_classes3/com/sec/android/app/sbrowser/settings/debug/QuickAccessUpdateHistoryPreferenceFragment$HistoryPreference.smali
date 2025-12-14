.class Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessUpdateHistoryPreferenceFragment$HistoryPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessUpdateHistoryPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HistoryPreference"
.end annotation


# instance fields
.field private mMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0e0595

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessUpdateHistoryPreferenceFragment$HistoryPreference;->mMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Lw2/H;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Lw2/H;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const v0, 0x7f0b0c0a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessUpdateHistoryPreferenceFragment$HistoryPreference;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
