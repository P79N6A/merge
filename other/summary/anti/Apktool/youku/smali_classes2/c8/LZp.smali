.class public Lc8/LZp;
.super Ljava/lang/Object;


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7fffffff

    sput v0, Lc8/LZp;->a:I

    return-void
.end method

.method public static a(Lc8/KZp;B)V
    .locals 1

    sget v0, Lc8/LZp;->a:I

    invoke-static {p0, p1, v0}, Lc8/LZp;->a(Lc8/KZp;BI)V

    return-void
.end method

.method public static a(Lc8/KZp;BI)V
    .locals 4

    const/4 v0, 0x0

    if-gtz p2, :cond_0

    new-instance v0, Lorg/apache/thrift/d;

    const-string/jumbo v1, "Maximum skip depth exceeded"

    invoke-direct {v0, v1}, Lorg/apache/thrift/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lc8/KZp;->p()Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lc8/KZp;->q()B

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lc8/KZp;->r()S

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lc8/KZp;->s()I

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lc8/KZp;->t()J

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lc8/KZp;->u()D

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lc8/KZp;->w()Ljava/nio/ByteBuffer;

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0}, Lc8/KZp;->f()Lc8/NZp;

    :goto_1
    invoke-virtual {p0}, Lc8/KZp;->h()Lc8/HZp;

    move-result-object v0

    iget-byte v1, v0, Lc8/HZp;->b:B

    if-eqz v1, :cond_1

    iget-byte v0, v0, Lc8/HZp;->b:B

    add-int/lit8 v1, p2, -0x1

    invoke-static {p0, v0, v1}, Lc8/LZp;->a(Lc8/KZp;BI)V

    invoke-virtual {p0}, Lc8/KZp;->i()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lc8/KZp;->g()V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0}, Lc8/KZp;->j()Lc8/JZp;

    move-result-object v1

    :goto_2
    iget v2, v1, Lc8/JZp;->c:I

    if-ge v0, v2, :cond_2

    iget-byte v2, v1, Lc8/JZp;->a:B

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v2, v3}, Lc8/LZp;->a(Lc8/KZp;BI)V

    iget-byte v2, v1, Lc8/JZp;->b:B

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v2, v3}, Lc8/LZp;->a(Lc8/KZp;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lc8/KZp;->k()V

    goto :goto_0

    :pswitch_a
    invoke-virtual {p0}, Lc8/KZp;->n()Lc8/MZp;

    move-result-object v1

    :goto_3
    iget v2, v1, Lc8/MZp;->b:I

    if-ge v0, v2, :cond_3

    iget-byte v2, v1, Lc8/MZp;->a:B

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v2, v3}, Lc8/LZp;->a(Lc8/KZp;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lc8/KZp;->o()V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {p0}, Lc8/KZp;->l()Lc8/IZp;

    move-result-object v1

    :goto_4
    iget v2, v1, Lc8/IZp;->b:I

    if-ge v0, v2, :cond_4

    iget-byte v2, v1, Lc8/IZp;->a:B

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v2, v3}, Lc8/LZp;->a(Lc8/KZp;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lc8/KZp;->m()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
