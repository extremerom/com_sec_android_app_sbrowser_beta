.class Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesSharedPreference;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesSharedPreference$PreferenceChangeListener;
    }
.end annotation


# instance fields
.field private final mEnabled:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation
.end field

.field private final mListener:Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesSharedPreference$PreferenceChangeListener;

.field private final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesSharedPreference$PreferenceChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesSharedPreference$PreferenceChangeListener;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesSharedPreference;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesSharedPreference;->mListener:Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesSharedPreference$PreferenceChangeListener;

    new-instance v2, Landroidx/lifecycle/X;

    invoke-direct {v2}, Landroidx/lifecycle/S;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesSharedPreference;->mEnabled:Landroidx/lifecycle/X;

    invoke-static {p1}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesSharedPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const-string v0, "most_visited_enabled"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesSharedPreference;->updateEnabled(Z)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesSharedPreference;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesSharedPreference;->updateEnabled(Z)V

    return-void
.end method

.method private updateEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesSharedPreference;->mEnabled:Landroidx/lifecycle/X;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/X;->postValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public isEnabled()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesSharedPreference;->mEnabled:Landroidx/lifecycle/X;

    return-object p0
.end method
