.class public abstract Lc/d;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lc/e;


# static fields
.field public static final synthetic a:I


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    sget-object v0, Lc/e;->f:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, LH/j;->v0(Landroid/os/IBinder;)Lc/b;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, LG5/w;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    check-cast p0, LH/s;

    if-nez p4, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lc/f;->g:Ljava/lang/String;

    invoke-interface {p4, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    if-eqz p4, :cond_3

    instance-of v0, p4, Lc/f;

    if-eqz v0, :cond_3

    check-cast p4, Lc/f;

    :cond_3
    :goto_0
    new-instance p4, LF6/e;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    new-instance v0, LH/y;

    invoke-static {p2}, LH/s;->v0(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-direct {v0, p1, v2}, LH/y;-><init>(Lc/b;Landroid/app/PendingIntent;)V

    iget-object p0, p0, LH/s;->b:LH/t;

    invoke-virtual {p0, v0, p4, p2}, LH/t;->setEngagementSignalsCallback(LH/y;LH/z;Landroid/os/Bundle;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, LH/j;->v0(Landroid/os/IBinder;)Lc/b;

    move-result-object p1

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, LG5/w;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    check-cast p0, LH/s;

    new-instance p4, LH/y;

    invoke-static {p2}, LH/s;->v0(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-direct {p4, p1, v0}, LH/y;-><init>(Lc/b;Landroid/app/PendingIntent;)V

    iget-object p0, p0, LH/s;->b:LH/t;

    invoke-virtual {p0, p4, p2}, LH/t;->isEngagementSignalsApiAvailable(LH/y;Landroid/os/Bundle;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, LH/j;->v0(Landroid/os/IBinder;)Lc/b;

    move-result-object p1

    sget-object p4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, LG5/w;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, LG5/w;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    check-cast p0, LH/s;

    new-instance v2, LH/y;

    invoke-static {p2}, LH/s;->v0(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v2, p1, v3}, LH/y;-><init>(Lc/b;Landroid/app/PendingIntent;)V

    iget-object p0, p0, LH/s;->b:LH/t;

    invoke-virtual {p0, v2, p4, v0, p2}, LH/t;->receiveFile(LH/y;Landroid/net/Uri;ILandroid/os/Bundle;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, LH/j;->v0(Landroid/os/IBinder;)Lc/b;

    move-result-object p1

    sget-object p4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, LG5/w;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/net/Uri;

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, LG5/w;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    check-cast p0, LH/s;

    new-instance v2, LH/y;

    invoke-static {p2}, LH/s;->v0(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v2, p1, v3}, LH/y;-><init>(Lc/b;Landroid/app/PendingIntent;)V

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    const-string v3, "target_origin"

    if-lt p1, v0, :cond_5

    const-class p1, Landroid/net/Uri;

    invoke-static {p2, v3, p1}, LH/a;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/net/Uri;

    goto :goto_1

    :cond_5
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/net/Uri;

    :goto_1
    iget-object p0, p0, LH/s;->b:LH/t;

    invoke-virtual {p0, v2, p4, v0, p2}, LH/t;->requestPostMessageChannel(LH/y;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, LH/j;->v0(Landroid/os/IBinder;)Lc/b;

    move-result-object p1

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, LG5/w;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    check-cast p0, LH/s;

    invoke-static {p2}, LH/s;->v0(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, LH/s;->w0(Lc/b;Landroid/app/PendingIntent;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, LH/j;->v0(Landroid/os/IBinder;)Lc/b;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, LG5/w;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, LG5/w;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    check-cast p0, LH/s;

    new-instance v2, LH/y;

    invoke-static {p2}, LH/s;->v0(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v2, p1, v3}, LH/y;-><init>(Lc/b;Landroid/app/PendingIntent;)V

    iget-object p0, p0, LH/s;->b:LH/t;

    invoke-virtual {p0, v2, p4, v0, p2}, LH/t;->validateRelationship(LH/y;ILandroid/net/Uri;Landroid/os/Bundle;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, LH/j;->v0(Landroid/os/IBinder;)Lc/b;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, LG5/w;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    check-cast p0, LH/s;

    new-instance v0, LH/y;

    invoke-static {p2}, LH/s;->v0(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-direct {v0, p1, v2}, LH/y;-><init>(Lc/b;Landroid/app/PendingIntent;)V

    iget-object p0, p0, LH/s;->b:LH/t;

    invoke-virtual {p0, v0, p4, p2}, LH/t;->postMessage(LH/y;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, LH/j;->v0(Landroid/os/IBinder;)Lc/b;

    move-result-object p1

    sget-object p4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, LG5/w;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;

    check-cast p0, LH/s;

    new-instance p4, LH/y;

    invoke-direct {p4, p1, v0}, LH/y;-><init>(Lc/b;Landroid/app/PendingIntent;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, LH/s;->b:LH/t;

    invoke-virtual {p0, p4, p2, v0, p1}, LH/t;->requestPostMessageChannel(LH/y;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, LH/j;->v0(Landroid/os/IBinder;)Lc/b;

    move-result-object p1

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, LG5/w;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    check-cast p0, LH/s;

    new-instance p4, LH/y;

    invoke-static {p2}, LH/s;->v0(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-direct {p4, p1, v0}, LH/y;-><init>(Lc/b;Landroid/app/PendingIntent;)V

    iget-object p0, p0, LH/s;->b:LH/t;

    invoke-virtual {p0, p4, p2}, LH/t;->updateVisuals(LH/y;Landroid/os/Bundle;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, LG5/w;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    check-cast p0, LH/s;

    iget-object p0, p0, LH/s;->b:LH/t;

    invoke-virtual {p0, p1, p2}, LH/t;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p0, v1}, LG5/w;->g(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_2

    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, LH/j;->v0(Landroid/os/IBinder;)Lc/b;

    move-result-object p1

    sget-object p4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, LG5/w;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/net/Uri;

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, LG5/w;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    check-cast p0, LH/s;

    invoke-virtual {p0, p1, p4, v2, p2}, LH/s;->A(Lc/b;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, LH/j;->v0(Landroid/os/IBinder;)Lc/b;

    move-result-object p1

    check-cast p0, LH/s;

    invoke-virtual {p0, p1, v0}, LH/s;->w0(Lc/b;Landroid/app/PendingIntent;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    check-cast p0, LH/s;

    iget-object p0, p0, LH/s;->b:LH/t;

    invoke-virtual {p0, p1, p2}, LH/t;->warmup(J)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
