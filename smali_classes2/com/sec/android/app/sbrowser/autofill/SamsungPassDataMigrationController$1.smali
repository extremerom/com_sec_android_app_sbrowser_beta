.class Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;->showMigrationCompletedDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController$1;->this$0:Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    sget-object p1, Lcom/sec/android/app/sbrowser/autofill/ActionOnAutofillServiceChanged;->REFRESH_ALL_TABS:Lcom/sec/android/app/sbrowser/autofill/ActionOnAutofillServiceChanged;

    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/autofill/AutofillServiceChangeObserver;->updateTabsOnDataStorageChange(Ljava/util/EnumSet;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController$1;->this$0:Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;->c(Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;)Lm/l;

    move-result-object p0

    invoke-virtual {p0}, Lm/y;->dismiss()V

    return-void
.end method
