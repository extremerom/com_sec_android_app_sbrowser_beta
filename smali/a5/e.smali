.class public final La5/e;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Intent;

.field public final b:I


# direct methods
.method public constructor <init>(ILandroid/content/Intent;)V
    .locals 1

    const-string v0, "Google Play Services not available"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, La5/e;->a:Landroid/content/Intent;

    iput p1, p0, La5/e;->b:I

    return-void
.end method
