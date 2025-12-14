.class Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager$1;->this$0:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDisplayName(Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager$1;->this$0:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;->a(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;)Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->getAppName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->getDisplayedAppName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public compare(Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;)I
    .locals 2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->isWhite()Z

    move-result v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->isWhite()Z

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager$1;->getDisplayName(Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager$1;->getDisplayName(Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;

    check-cast p2, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager$1;->compare(Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;)I

    move-result p0

    return p0
.end method
