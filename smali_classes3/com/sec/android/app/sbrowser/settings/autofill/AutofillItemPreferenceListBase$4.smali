.class Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$4;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$4;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mExpAdapter:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;

    instance-of v0, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->setEmptyViewHeight()V

    :cond_0
    return-void
.end method
