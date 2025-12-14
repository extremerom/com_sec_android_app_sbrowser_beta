.class Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationBuilderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationBuilder;


# instance fields
.field private final mBuilder:LU0/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LU0/o;

    invoke-direct {v0, p1, p2}, LU0/o;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationBuilderImpl;->mBuilder:LU0/o;

    return-void
.end method


# virtual methods
.method public addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationBuilder;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationBuilderImpl;->mBuilder:LU0/o;

    invoke-virtual {v0, p1, p2, p3}, LU0/o;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-object p0
.end method

.method public build()Landroid/app/Notification;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationBuilderImpl;->mBuilder:LU0/o;

    invoke-virtual {p0}, LU0/o;->b()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public setAutoCancel(Z)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationBuilder;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationBuilderImpl;->mBuilder:LU0/o;

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p1}, LU0/o;->f(IZ)V

    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationBuilder;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationBuilderImpl;->mBuilder:LU0/o;

    iput-object p1, v0, LU0/o;->g:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationBuilder;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationBuilderImpl;->mBuilder:LU0/o;

    invoke-virtual {v0, p1}, LU0/o;->d(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationBuilder;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationBuilderImpl;->mBuilder:LU0/o;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, LU0/o;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, LU0/o;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationBuilder;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationBuilderImpl;->mBuilder:LU0/o;

    iget-object v0, v0, LU0/o;->z:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setGroup(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationBuilder;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationBuilderImpl;->mBuilder:LU0/o;

    iput-object p1, v0, LU0/o;->q:Ljava/lang/String;

    return-object p0
.end method

.method public setGroupSummary(Z)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationBuilder;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationBuilderImpl;->mBuilder:LU0/o;

    iput-boolean p1, v0, LU0/o;->r:Z

    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationBuilder;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationBuilderImpl;->mBuilder:LU0/o;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/core/graphics/drawable/IconCompat;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    iput-object p1, v1, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    move-object p1, v1

    :goto_0
    iput-object p1, v0, LU0/o;->h:Landroidx/core/graphics/drawable/IconCompat;

    return-object p0
.end method

.method public setLocalOnly(Z)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationBuilder;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationBuilderImpl;->mBuilder:LU0/o;

    iput-boolean p1, v0, LU0/o;->s:Z

    return-object p0
.end method

.method public setOnGoing(Z)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationBuilder;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationBuilderImpl;->mBuilder:LU0/o;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, LU0/o;->f(IZ)V

    return-object p0
.end method

.method public setShowWhen(Z)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationBuilder;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationBuilderImpl;->mBuilder:LU0/o;

    iput-boolean p1, v0, LU0/o;->k:Z

    return-object p0
.end method

.method public setSmallIcon(I)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationBuilder;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationBuilderImpl;->mBuilder:LU0/o;

    iget-object v0, v0, LU0/o;->z:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    return-object p0
.end method

.method public setStyle(Landroid/support/v4/media/session/p;[ILandroid/app/PendingIntent;Z)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationBuilder;
    .locals 0

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationBuilderImpl;->mBuilder:LU0/o;

    new-instance p4, Ln2/c;

    invoke-direct {p4}, Ln2/c;-><init>()V

    iget-object p1, p1, Landroid/support/v4/media/session/p;->a:Landroid/support/v4/media/session/n;

    iget-object p1, p1, Landroid/support/v4/media/session/m;->c:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iput-object p1, p4, Ln2/c;->e:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iput-object p2, p4, Ln2/c;->d:[I

    invoke-virtual {p3, p4}, LU0/o;->h(LJ8/i;)V

    return-object p0
.end method

.method public setSubText(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationBuilder;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationBuilderImpl;->mBuilder:LU0/o;

    invoke-virtual {v0, p1}, LU0/o;->i(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setVisibility(I)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationBuilder;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationBuilderImpl;->mBuilder:LU0/o;

    iput p1, v0, LU0/o;->v:I

    return-object p0
.end method
