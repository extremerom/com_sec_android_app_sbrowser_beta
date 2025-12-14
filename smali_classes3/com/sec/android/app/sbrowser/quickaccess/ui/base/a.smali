.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/ui/base/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/a;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lib/h;

    check-cast p2, Lib/f;

    const-string p0, "acc"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "element"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lib/f;->getKey()Lib/g;

    move-result-object p0

    invoke-interface {p1, p0}, Lib/h;->minusKey(Lib/g;)Lib/h;

    move-result-object p0

    sget-object p1, Lib/i;->a:Lib/i;

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lib/d;->a:Lib/d;

    invoke-interface {p0, v0}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object v1

    check-cast v1, Lib/e;

    if-nez v1, :cond_1

    new-instance p1, Lib/b;

    invoke-direct {p1, p2, p0}, Lib/b;-><init>(Lib/f;Lib/h;)V

    :goto_0
    move-object p2, p1

    goto :goto_1

    :cond_1
    invoke-interface {p0, v0}, Lib/h;->minusKey(Lib/g;)Lib/h;

    move-result-object p0

    if-ne p0, p1, :cond_2

    new-instance p0, Lib/b;

    invoke-direct {p0, v1, p2}, Lib/b;-><init>(Lib/f;Lib/h;)V

    move-object p2, p0

    goto :goto_1

    :cond_2
    new-instance p1, Lib/b;

    new-instance v0, Lib/b;

    invoke-direct {v0, p2, p0}, Lib/b;-><init>(Lib/f;Lib/h;)V

    invoke-direct {p1, v1, v0}, Lib/b;-><init>(Lib/f;Lib/h;)V

    goto :goto_0

    :goto_1
    return-object p2

    :pswitch_0
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lib/f;

    const-string p0, "acc"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "element"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0

    :pswitch_1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError$ErrorType;->c(ILjava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError$ErrorType;->a(ILjava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
