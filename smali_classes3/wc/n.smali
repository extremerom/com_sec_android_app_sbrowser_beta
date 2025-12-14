.class public final Lwc/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final b:Lwc/o;

.field public final c:Lwc/p;


# direct methods
.method public synthetic constructor <init>(Lwc/o;Lwc/p;I)V
    .locals 0

    iput p3, p0, Lwc/n;->a:I

    iput-object p1, p0, Lwc/n;->b:Lwc/o;

    iput-object p2, p0, Lwc/n;->c:Lwc/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lwc/n;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lwc/n;->b:Lwc/o;

    iget-object v0, v0, Lwc/o;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object p0, p0, Lwc/n;->c:Lwc/p;

    invoke-virtual {p0}, Lwc/p;->p()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {v0, p0}, Lfb/F;->e(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lwc/n;->b:Lwc/o;

    iget-object v0, v0, Lwc/o;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object p0, p0, Lwc/n;->c:Lwc/p;

    invoke-virtual {p0}, Lwc/p;->o()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {v0, p0}, Lfb/F;->e(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
