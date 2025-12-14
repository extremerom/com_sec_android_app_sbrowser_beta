.class public final Lcom/google/ar/core/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/google/ar/core/InstallActivity;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Lcom/google/ar/core/InstallActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/ar/core/D;->b:I

    iput-object p1, p0, Lcom/google/ar/core/D;->a:Lcom/google/ar/core/InstallActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget p1, p0, Lcom/google/ar/core/D;->b:I

    iget-object p0, p0, Lcom/google/ar/core/D;->a:Lcom/google/ar/core/InstallActivity;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException;

    invoke-direct {p1}, Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/ar/core/InstallActivity;->c(Ljava/lang/Exception;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/ar/core/InstallActivity;->b()V

    invoke-virtual {p0}, Lcom/google/ar/core/InstallActivity;->d()V

    return-void
.end method
