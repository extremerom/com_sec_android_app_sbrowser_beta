.class public final Ln2/c;
.super LJ8/i;
.source "SourceFile"


# instance fields
.field public d:[I

.field public e:Landroid/support/v4/media/session/MediaSessionCompat$Token;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, LJ8/i;-><init>(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Ln2/c;->d:[I

    return-void
.end method


# virtual methods
.method public final d(Lcom/google/firebase/messaging/q;)V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    iget-object p1, p1, Lcom/google/firebase/messaging/q;->b:Ljava/lang/Object;

    check-cast p1, Landroid/app/Notification$Builder;

    if-lt v0, v1, :cond_0

    invoke-static {}, Ln2/a;->a()Landroid/app/Notification$MediaStyle;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v2, v1}, Ln2/b;->a(Landroid/app/Notification$MediaStyle;Ljava/lang/CharSequence;ILandroid/app/PendingIntent;Ljava/lang/Boolean;)Landroid/app/Notification$MediaStyle;

    move-result-object v0

    iget-object v1, p0, Ln2/c;->d:[I

    iget-object p0, p0, Ln2/c;->e:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-static {v0, v1, p0}, Ln2/a;->b(Landroid/app/Notification$MediaStyle;[ILandroid/support/v4/media/session/MediaSessionCompat$Token;)Landroid/app/Notification$MediaStyle;

    move-result-object p0

    invoke-static {p1, p0}, Ln2/a;->d(Landroid/app/Notification$Builder;Landroid/app/Notification$MediaStyle;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ln2/a;->a()Landroid/app/Notification$MediaStyle;

    move-result-object v0

    iget-object v1, p0, Ln2/c;->d:[I

    iget-object p0, p0, Ln2/c;->e:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-static {v0, v1, p0}, Ln2/a;->b(Landroid/app/Notification$MediaStyle;[ILandroid/support/v4/media/session/MediaSessionCompat$Token;)Landroid/app/Notification$MediaStyle;

    move-result-object p0

    invoke-static {p1, p0}, Ln2/a;->d(Landroid/app/Notification$Builder;Landroid/app/Notification$MediaStyle;)V

    :goto_0
    return-void
.end method
