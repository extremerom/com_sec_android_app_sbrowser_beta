.class public Lcom/sec/android/app/sbrowser/settings/PrivacyEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mFeature:Ljava/lang/String;

.field private mIsBlocked:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyEntry;->mFeature:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyEntry;->mIsBlocked:Z

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyEntry;->mFeature:Ljava/lang/String;

    return-object p0
.end method

.method public isBlocked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyEntry;->mIsBlocked:Z

    return p0
.end method
