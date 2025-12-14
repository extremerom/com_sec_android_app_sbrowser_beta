.class public final LK6/n;
.super Ls6/k;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/material/textfield/a;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK6/n;->a:Lcom/google/android/material/textfield/a;

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    iget-object p0, p0, LK6/n;->a:Lcom/google/android/material/textfield/a;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/a;->b()LK6/r;

    move-result-object p0

    invoke-virtual {p0}, LK6/r;->a()V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p0, p0, LK6/n;->a:Lcom/google/android/material/textfield/a;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/a;->b()LK6/r;

    move-result-object p0

    invoke-virtual {p0}, LK6/r;->b()V

    return-void
.end method
