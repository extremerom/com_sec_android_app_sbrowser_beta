.class Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesSharedPreference$PreferenceChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesSharedPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PreferenceChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesSharedPreference;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesSharedPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesSharedPreference$PreferenceChangeListener;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesSharedPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesSharedPreference;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesSharedPreference$PreferenceChangeListener;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesSharedPreference;)V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    const-string v0, "most_visited_enabled"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesSharedPreference$PreferenceChangeListener;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesSharedPreference;

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesSharedPreference;->a(Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesSharedPreference;Z)V

    :cond_0
    return-void
.end method
