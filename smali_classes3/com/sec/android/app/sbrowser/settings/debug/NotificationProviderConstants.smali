.class public Lcom/sec/android/app/sbrowser/settings/debug/NotificationProviderConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final NOTIFICATIONS_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "clicked"

    const-string v1, "time"

    const-string v2, "url"

    const-string v3, "persid"

    const-string v4, "read"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/debug/NotificationProviderConstants;->NOTIFICATIONS_PROJECTION:[Ljava/lang/String;

    return-void
.end method
