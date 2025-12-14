.class Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->onBindViewHolder(Lw2/H;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio$1;->this$0:Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio$1;->this$0:Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mObject:Lcom/sec/android/app/sbrowser/common/model/homepage/HomePagePreferenceFragmentDelegate;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/homepage/HomePagePreferenceFragmentDelegate;->showHomePageSettings(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
