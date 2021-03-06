.class public final Lrx/internal/operators/OperatorZip$Zip;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "OperatorZip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/qwq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Zip"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/owq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;"
    }
.end annotation


# static fields
.field static final THRESHOLD:I

.field private static final serialVersionUID:J = 0x53337eae55d8937dL


# instance fields
.field public final child:Lc8/Wlq;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Wlq",
            "<-TR;>;"
        }
    .end annotation
.end field

.field private final childSubscription:Lc8/SBq;

.field emitted:I

.field private requested:Ljava/util/concurrent/atomic/AtomicLong;

.field private volatile subscribers:[Ljava/lang/Object;

.field private final zipFunction:Lc8/Rnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Rnq",
            "<+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 176
    sget v0, Lc8/fyq;->SIZE:I

    int-to-double v0, v0

    const-wide v2, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sput v0, Lrx/internal/operators/OperatorZip$Zip;->THRESHOLD:I

    return-void
.end method

.method public constructor <init>(Lc8/Omq;Lc8/Rnq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TR;>;",
            "Lc8/Rnq",
            "<+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, "this":Lrx/internal/operators/OperatorZip$Zip;, "Lrx/internal/operators/OperatorZip$Zip<TR;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TR;>;"
    .local p2, "zipFunction":Lc8/Rnq;, "Lrx/functions/FuncN<+TR;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 174
    new-instance v0, Lc8/SBq;

    invoke-direct {v0}, Lc8/SBq;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorZip$Zip;->childSubscription:Lc8/SBq;

    .line 184
    iput-object p1, p0, Lrx/internal/operators/OperatorZip$Zip;->child:Lc8/Wlq;

    .line 185
    iput-object p2, p0, Lrx/internal/operators/OperatorZip$Zip;->zipFunction:Lc8/Rnq;

    .line 186
    iget-object v0, p0, Lrx/internal/operators/OperatorZip$Zip;->childSubscription:Lc8/SBq;

    invoke-virtual {p1, v0}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 187
    return-void
.end method


# virtual methods
.method public start([Lc8/Vlq;Ljava/util/concurrent/atomic/AtomicLong;)V
    .locals 5
    .param p1, "os"    # [Lc8/Vlq;
    .param p2, "requested"    # Ljava/util/concurrent/atomic/AtomicLong;

    .prologue
    .line 191
    .local p0, "this":Lrx/internal/operators/OperatorZip$Zip;, "Lrx/internal/operators/OperatorZip$Zip<TR;>;"
    array-length v3, p1

    new-array v2, v3, [Ljava/lang/Object;

    .line 192
    .local v2, "subscribers":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 193
    new-instance v1, Lc8/owq;

    invoke-direct {v1, p0}, Lc8/owq;-><init>(Lrx/internal/operators/OperatorZip$Zip;)V

    .line 194
    .local v1, "io":Lc8/owq;, "Lrx/internal/operators/OperatorZip$Zip<TR;>.InnerSubscriber;"
    aput-object v1, v2, v0

    .line 195
    iget-object v3, p0, Lrx/internal/operators/OperatorZip$Zip;->childSubscription:Lc8/SBq;

    invoke-virtual {v3, v1}, Lc8/SBq;->add(Lc8/Pmq;)V

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    .end local v1    # "io":Lc8/owq;, "Lrx/internal/operators/OperatorZip$Zip<TR;>.InnerSubscriber;"
    :cond_0
    iput-object p2, p0, Lrx/internal/operators/OperatorZip$Zip;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 199
    iput-object v2, p0, Lrx/internal/operators/OperatorZip$Zip;->subscribers:[Ljava/lang/Object;

    .line 201
    const/4 v0, 0x0

    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 202
    aget-object v4, p1, v0

    aget-object v3, v2, v0

    check-cast v3, Lc8/owq;

    invoke-virtual {v4, v3}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 204
    :cond_1
    return-void
.end method

.method public tick()V
    .locals 20
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 215
    .local p0, "this":Lrx/internal/operators/OperatorZip$Zip;, "Lrx/internal/operators/OperatorZip$Zip<TR;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lrx/internal/operators/OperatorZip$Zip;->subscribers:[Ljava/lang/Object;

    .line 216
    .local v14, "subscribers":[Ljava/lang/Object;
    if-nez v14, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorZip$Zip;->getAndIncrement()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-nez v16, :cond_0

    .line 221
    array-length v10, v14

    .line 222
    .local v10, "length":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lrx/internal/operators/OperatorZip$Zip;->child:Lc8/Wlq;

    .line 223
    .local v5, "child":Lc8/Wlq;, "Lrx/Observer<-TR;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lrx/internal/operators/OperatorZip$Zip;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 227
    .local v13, "requested":Ljava/util/concurrent/atomic/AtomicLong;
    :cond_2
    :goto_1
    new-array v15, v10, [Ljava/lang/Object;

    .line 228
    .local v15, "vs":[Ljava/lang/Object;
    const/4 v2, 0x1

    .line 229
    .local v2, "allHaveValues":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v10, :cond_5

    .line 230
    aget-object v16, v14, v7

    check-cast v16, Lc8/owq;

    move-object/from16 v0, v16

    iget-object v4, v0, Lc8/owq;->items:Lc8/fyq;

    .line 231
    .local v4, "buffer":Lc8/fyq;
    invoke-virtual {v4}, Lc8/fyq;->peek()Ljava/lang/Object;

    move-result-object v11

    .line 233
    .local v11, "n":Ljava/lang/Object;
    if-nez v11, :cond_3

    .line 234
    const/4 v2, 0x0

    .line 229
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 238
    :cond_3
    invoke-virtual {v4, v11}, Lc8/fyq;->isCompleted(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 239
    invoke-interface {v5}, Lc8/Wlq;->onCompleted()V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorZip$Zip;->childSubscription:Lc8/SBq;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lc8/SBq;->unsubscribe()V

    goto :goto_0

    .line 245
    :cond_4
    invoke-virtual {v4, v11}, Lc8/fyq;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v15, v7

    goto :goto_3

    .line 249
    .end local v4    # "buffer":Lc8/fyq;
    .end local v11    # "n":Ljava/lang/Object;
    :cond_5
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-lez v16, :cond_9

    if-eqz v2, :cond_9

    .line 252
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorZip$Zip;->zipFunction:Lc8/Rnq;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Lc8/Rnq;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Lc8/Wlq;->onNext(Ljava/lang/Object;)V

    .line 254
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 255
    move-object/from16 v0, p0

    iget v0, v0, Lrx/internal/operators/OperatorZip$Zip;->emitted:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lrx/internal/operators/OperatorZip$Zip;->emitted:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    move-object v3, v14

    .local v3, "arr$":[Ljava/lang/Object;
    array-length v9, v14

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_4
    if-ge v8, v9, :cond_7

    aget-object v12, v3, v8

    .line 262
    .local v12, "obj":Ljava/lang/Object;
    check-cast v12, Lc8/owq;

    .end local v12    # "obj":Ljava/lang/Object;
    iget-object v4, v12, Lc8/owq;->items:Lc8/fyq;

    .line 263
    .restart local v4    # "buffer":Lc8/fyq;
    invoke-virtual {v4}, Lc8/fyq;->poll()Ljava/lang/Object;

    .line 265
    invoke-virtual {v4}, Lc8/fyq;->peek()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lc8/fyq;->isCompleted(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 267
    invoke-interface {v5}, Lc8/Wlq;->onCompleted()V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorZip$Zip;->childSubscription:Lc8/SBq;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lc8/SBq;->unsubscribe()V

    goto/16 :goto_0

    .line 256
    .end local v3    # "arr$":[Ljava/lang/Object;
    .end local v4    # "buffer":Lc8/fyq;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    :catch_0
    move-exception v6

    .line 257
    .local v6, "e":Ljava/lang/Throwable;
    invoke-static {v6, v5, v15}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 261
    .end local v6    # "e":Ljava/lang/Throwable;
    .restart local v3    # "arr$":[Ljava/lang/Object;
    .restart local v4    # "buffer":Lc8/fyq;
    .restart local v8    # "i$":I
    .restart local v9    # "len$":I
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 273
    .end local v4    # "buffer":Lc8/fyq;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lrx/internal/operators/OperatorZip$Zip;->emitted:I

    move/from16 v16, v0

    sget v17, Lrx/internal/operators/OperatorZip$Zip;->THRESHOLD:I

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_2

    .line 274
    move-object v3, v14

    array-length v9, v14

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v9, :cond_8

    aget-object v12, v3, v8

    .line 275
    .restart local v12    # "obj":Ljava/lang/Object;
    check-cast v12, Lc8/owq;

    .end local v12    # "obj":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget v0, v0, Lrx/internal/operators/OperatorZip$Zip;->emitted:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v12, v0, v1}, Lc8/owq;->requestMore(J)V

    .line 274
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 277
    :cond_8
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lrx/internal/operators/OperatorZip$Zip;->emitted:I

    goto/16 :goto_1

    .line 283
    .end local v3    # "arr$":[Ljava/lang/Object;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorZip$Zip;->decrementAndGet()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-gtz v16, :cond_2

    goto/16 :goto_0
.end method
