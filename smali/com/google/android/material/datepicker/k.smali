.class public final Lcom/google/android/material/datepicker/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/google/android/material/datepicker/n;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/datepicker/k;->a:Lcom/google/android/material/datepicker/n;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p0, p0, Lcom/google/android/material/datepicker/k;->a:Lcom/google/android/material/datepicker/n;

    iget-object p1, p0, Lcom/google/android/material/datepicker/n;->e:Lcom/google/android/material/datepicker/m;

    sget-object v0, Lcom/google/android/material/datepicker/m;->YEAR:Lcom/google/android/material/datepicker/m;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/google/android/material/datepicker/m;->DAY:Lcom/google/android/material/datepicker/m;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/n;->i(Lcom/google/android/material/datepicker/m;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/android/material/datepicker/m;->DAY:Lcom/google/android/material/datepicker/m;

    if-ne p1, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/n;->i(Lcom/google/android/material/datepicker/m;)V

    :cond_1
    :goto_0
    return-void
.end method
