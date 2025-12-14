.class public final LE0/e;
.super Lib/a;
.source "SourceFile"

# interfaces
.implements LNc/z;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(Lib/g;I)V
    .locals 0

    iput p2, p0, LE0/e;->a:I

    invoke-direct {p0, p1}, Lib/a;-><init>(Lib/g;)V

    return-void
.end method

.method private final v(Lib/h;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final handleException(Lib/h;Ljava/lang/Throwable;)V
    .locals 1

    iget p0, p0, LE0/e;->a:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Exception "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " occurred during appManagerDataStore"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "msg"

    invoke-static {p0, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Le7/a;->a:Ljava/lang/String;

    const-string p2, " "

    const-string v0, "GWT:GAppWidgetManager"

    invoke-static {p1, p2, p0, v0}, Lw2/j;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
